import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app/app.dart';
import 'core/services/notification_service.dart';
import 'core/services/preferences_service.dart';
import 'core/utils/env_loader.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await loadEnvironment();
  await PreferencesService.instance.init();
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
