import 'dart:convert';

import 'package:coolify_mobile/core/services/update_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';

http.Client versionJson(Object? body, {int status = 200}) =>
    MockClient((request) async {
      expect(request.url.toString(), '$releaseBaseUrl/version.json');
      return http.Response(body is String ? body : jsonEncode(body), status);
    });

UpdateService service(http.Client client, {int installed = 10}) =>
    UpdateService(
      client: client,
      currentBuild: () async => installed,
      enabled: true,
    );

void main() {
  const newer = {
    'version': '1.2.0',
    'build': 20,
    'apk': 'coolify_mobile.apk',
    'sha256': 'abc',
    'notes': 'Fixes',
  };

  test('returns the update when the published build is newer', () async {
    final update = await service(versionJson(newer)).checkForUpdate();

    expect(update, isNotNull);
    expect(update!.version, '1.2.0');
    expect(update.build, 20);
    expect(update.apkUrl, '$releaseBaseUrl/coolify_mobile.apk');
    expect(update.sha256, 'abc');
    expect(update.notes, 'Fixes');
  });

  test('returns null when the build is equal or older', () async {
    expect(
      await service(versionJson(newer), installed: 20).checkForUpdate(),
      isNull,
    );
    expect(
      await service(versionJson(newer), installed: 99).checkForUpdate(),
      isNull,
    );
  });

  test('never blocks the app on a failed or malformed check', () async {
    expect(
      await service(versionJson('nope', status: 404)).checkForUpdate(),
      isNull,
    );
    expect(await service(versionJson('not json')).checkForUpdate(), isNull);
    expect(
      await service(versionJson({'version': '1'})).checkForUpdate(),
      isNull,
    );
    expect(
      await service(
        MockClient((_) async => throw Exception('offline')),
      ).checkForUpdate(),
      isNull,
    );
  });

  test('is a no-op when disabled (iOS, debug)', () async {
    final disabled = UpdateService(
      client: versionJson(newer),
      currentBuild: () async => 1,
      enabled: false,
    );
    expect(await disabled.checkForUpdate(), isNull);
  });
}
