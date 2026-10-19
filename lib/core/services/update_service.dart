import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:ota_update/ota_update.dart';
import 'package:package_info_plus/package_info_plus.dart';

/// Rolling GitHub release that always holds the newest build. The release
/// workflow replaces it on every run, so these URLs never change.
const String releaseBaseUrl =
    'https://github.com/Gnidreve/coolify_mobile/releases/download/latest';

/// Contents of `version.json`, published as an asset of the `latest` release.
class AppUpdate {
  const AppUpdate({
    required this.version,
    required this.build,
    required this.apkUrl,
    this.sha256,
    this.notes = '',
  });

  /// Parses `version.json`; returns null when required fields are missing.
  static AppUpdate? fromJson(Object? json) {
    if (json is! Map) return null;
    final version = json['version'];
    final build = json['build'];
    final apk = json['apk'];
    if (version is! String || build is! int || apk is! String) return null;

    final sha256 = json['sha256'];
    final notes = json['notes'];
    return AppUpdate(
      version: version,
      build: build,
      apkUrl: apk.startsWith('http') ? apk : '$releaseBaseUrl/$apk',
      sha256: sha256 is String && sha256.isNotEmpty ? sha256 : null,
      notes: notes is String ? notes : '',
    );
  }

  final String version;

  /// Android version code; strictly increasing across releases.
  final int build;
  final String apkUrl;
  final String? sha256;
  final String notes;
}

class UpdateService {
  UpdateService({
    http.Client? client,
    Future<int> Function()? currentBuild,
    bool? enabled,
  }) : _client = client,
       _currentBuild = currentBuild ?? _installedBuild,
       _enabled = enabled ?? (!kIsWeb && Platform.isAndroid && !kDebugMode);

  final http.Client? _client;
  final Future<int> Function() _currentBuild;
  final bool _enabled;

  static Future<int> _installedBuild() async {
    final info = await PackageInfo.fromPlatform();
    return int.tryParse(info.buildNumber) ?? 0;
  }

  /// Returns the available update, or null if the app is current, the check
  /// is disabled (iOS, debug builds) or the release cannot be reached. A
  /// failed check must never keep the user out of the app.
  Future<AppUpdate?> checkForUpdate() async {
    if (!_enabled) return null;

    try {
      final response = await (_client?.get ?? http.get)(
        Uri.parse('$releaseBaseUrl/version.json'),
        headers: const {'Cache-Control': 'no-cache'},
      ).timeout(const Duration(seconds: 8));
      if (response.statusCode != 200) return null;

      final update = AppUpdate.fromJson(
        jsonDecode(utf8.decode(response.bodyBytes)),
      );
      if (update == null) return null;

      return update.build > await _currentBuild() ? update : null;
    } catch (_) {
      return null;
    }
  }

  /// Downloads the APK (checksum-verified when `version.json` carries one)
  /// and hands it to the Android installer. Uses a fresh [OtaUpdate] per call
  /// because the plugin caches its event stream per instance.
  Stream<OtaEvent> install(AppUpdate update) {
    return OtaUpdate().execute(
      update.apkUrl,
      destinationFilename: 'coolify_mobile_${update.build}.apk',
      sha256checksum: update.sha256,
    );
  }
}
