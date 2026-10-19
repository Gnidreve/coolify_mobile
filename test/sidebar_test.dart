import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:coolify_mobile/components/app_sidebar_drawer.dart';
import 'package:coolify_mobile/core/services/app_shell_service.dart';
import 'package:coolify_mobile/core/services/preferences_service.dart';
import 'package:coolify_mobile/theme.dart';

void main() {
  setUp(() async {
    SharedPreferences.setMockInitialValues({});
    await PreferencesService.instance.init();
  });

  Future<void> pumpDrawer(WidgetTester tester) async {
    tester.view.physicalSize = const Size(1080, 2400);
    tester.view.devicePixelRatio = 3;
    addTearDown(tester.view.reset);
    final scaffoldKey = GlobalKey<ScaffoldState>();

    await tester.pumpWidget(
      ShadApp(
        theme: buildLightTheme(),
        home: Scaffold(
          key: scaffoldKey,
          drawer: const AppSidebarDrawer(),
          body: ShadButton(
            onPressed: () => scaffoldKey.currentState!.openDrawer(),
            child: const Text('open'),
          ),
        ),
      ),
    );
    await tester.tap(find.text('open'));
    await tester.pumpAndSettle();
  }

  testWidgets('lists every group and item of the Coolify navigation', (
    tester,
  ) async {
    await pumpDrawer(tester);

    for (final group in AppSidebarGroup.values) {
      expect(find.text(group.label), findsOneWidget);
    }
    for (final item in AppSidebarItem.values) {
      expect(find.text(item.label), findsOneWidget);
    }
  });

  testWidgets('user menu opens with all entries', (tester) async {
    await pumpDrawer(tester);

    await tester.tap(find.text('Coolify').last);
    await tester.pumpAndSettle();

    for (final label in [
      'Profile',
      'Appearance',
      "What's New",
      'Documentation',
      'Feedback',
      'Sponsor us',
      'Log out',
    ]) {
      expect(find.text(label), findsOneWidget);
    }

    await tester.tap(find.text('Appearance'));
    await tester.pumpAndSettle();
    expect(find.text('Dark'), findsOneWidget);
  });
}
