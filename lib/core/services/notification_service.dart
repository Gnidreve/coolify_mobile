import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'preferences_service.dart';

class NotificationPermissionResult {
  const NotificationPermissionResult({
    required this.authorizationStatus,
    required this.deviceId,
    required this.shouldShowDeviceIdDialog,
  });

  final AuthorizationStatus authorizationStatus;
  final String? deviceId;
  final bool shouldShowDeviceIdDialog;

  bool get isAuthorized =>
      authorizationStatus == AuthorizationStatus.authorized ||
      authorizationStatus == AuthorizationStatus.provisional;
}

class NotificationService {
  NotificationService._();

  static final NotificationService instance = NotificationService._();

  bool _initialized = false;

  Future<void> ensureInitialized() async {
    if (_initialized) return;

    try {
      Firebase.app();
    } on FirebaseException {
      await Firebase.initializeApp();
    } catch (_) {
      await Firebase.initializeApp();
    }

    _initialized = true;
  }

  Future<bool> isSupported() async {
    try {
      await ensureInitialized();
      return true;
    } catch (_) {
      return false;
    }
  }

  Future<NotificationPermissionResult> requestPermissionAndGetDeviceId() async {
    await ensureInitialized();

    final messaging = FirebaseMessaging.instance;
    final settings = await messaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
      provisional: false,
    );

    if (settings.authorizationStatus != AuthorizationStatus.authorized &&
        settings.authorizationStatus != AuthorizationStatus.provisional) {
      return NotificationPermissionResult(
        authorizationStatus: settings.authorizationStatus,
        deviceId: null,
        shouldShowDeviceIdDialog: false,
      );
    }

    final token = await messaging.getToken();
    final prefs = PreferencesService.instance;
    final acknowledged = prefs.getAcknowledgedNotificationToken();
    final shouldShow =
        token != null && token.isNotEmpty && token != acknowledged;

    return NotificationPermissionResult(
      authorizationStatus: settings.authorizationStatus,
      deviceId: token,
      shouldShowDeviceIdDialog: shouldShow,
    );
  }

  Future<void> acknowledgeDeviceId(String token) {
    return PreferencesService.instance.setAcknowledgedNotificationToken(token);
  }
}
