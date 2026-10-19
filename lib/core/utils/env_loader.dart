import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

/// Loads the bundled `.env` (login form defaults) without ever blocking the
/// app start. The file is optional: release builds from CI ship it empty, and
/// `flutter_dotenv` throws on an empty file, which would leave the app on the
/// splash screen forever.
Future<void> loadEnvironment({String fileName = '.env'}) async {
  try {
    await dotenv.load(fileName: fileName);
  } catch (error) {
    debugPrint('Continuing without $fileName: $error');
    // `dotenv.env` throws NotInitializedError until `load` succeeded once.
    dotenv.testLoad(fileInput: '');
  }
}
