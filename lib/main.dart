import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'app/app.dart';
import 'core/services/notification_service.dart';
import 'core/services/preferences_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: '.env');
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
