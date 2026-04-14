import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'app/app.dart';
import 'core/services/credentials_service.dart';
import 'core/services/notification_service.dart';
import 'core/services/preferences_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: '.env');
  await PreferencesService.instance.init();
  await _seedEnvCredentials();
  await _initializeNotifications();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const CoolifyApp());
}

Future<void> _initializeNotifications() async {
  try {
    await NotificationService.instance.ensureInitialized();
  } catch (_) {
    // Keep app startup resilient when Firebase is not fully configured yet.
  }
}

/// On first launch, pull COOLIFY_BASE_URL and COOLIFY_AUTH_TOKEN from .env
/// into secure storage so the login screen is skipped in development.
Future<void> _seedEnvCredentials() async {
  final prefs = PreferencesService.instance;
  final credentials = CredentialsService.instance;
  final storedUrl = await credentials.getBaseUrl();
  final storedToken = await credentials.getApiToken();
  final envUrl = normalizeBaseUrl(dotenv.env['COOLIFY_BASE_URL']);
  final envToken = normalizeApiToken(dotenv.env['COOLIFY_AUTH_TOKEN']);

  if (envUrl != null &&
      envUrl.isNotEmpty &&
      envToken != null &&
      envToken.isNotEmpty) {
    if (storedUrl != envUrl || storedToken != envToken) {
      await credentials.setCredentials(baseUrl: envUrl, apiToken: envToken);
    }
    await prefs.markEnvSeeded();
    return;
  }

  if (!prefs.isEnvSeeded()) {
    await prefs.markEnvSeeded();
  }
}
