import 'dart:convert';
import 'dart:typed_data';

import 'package:coolify_mobile/core/utils/env_loader.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  void bundle(Map<String, String> assets) {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMessageHandler('flutter/assets', (message) async {
          final key = utf8.decode(message!.buffer.asUint8List());
          final content = assets[key];
          if (content == null) return null;
          return ByteData.sublistView(Uint8List.fromList(utf8.encode(content)));
        });
  }

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMessageHandler('flutter/assets', null);
  });

  test('plain dotenv.load fails on an empty file (why the guard exists)', () {
    bundle({'plain-empty.env': ''});
    expect(
      dotenv.load(fileName: 'plain-empty.env'),
      throwsA(isA<EmptyEnvFileError>()),
    );
  });

  test('an empty .env does not block startup', () async {
    bundle({'empty.env': ''});

    await loadEnvironment(fileName: 'empty.env');

    expect(dotenv.env['COOLIFY_BASE_URL'], isNull);
  });

  test('a missing .env does not block startup', () async {
    bundle({});

    await loadEnvironment(fileName: 'missing.env');

    expect(dotenv.env['COOLIFY_BASE_URL'], isNull);
  });

  test('values of a filled .env are available', () async {
    bundle({'filled.env': 'COOLIFY_BASE_URL=https://c.test\n'});

    await loadEnvironment(fileName: 'filled.env');

    expect(dotenv.env['COOLIFY_BASE_URL'], 'https://c.test');
  });
}
