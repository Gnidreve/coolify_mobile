import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:coolify_mobile/theme.dart';

void main() {
  test('light theme uses the default shadcn zinc primary color', () {
    expect(buildLightTheme().colorScheme.primary, const Color(0xFF18181B));
  });
}
