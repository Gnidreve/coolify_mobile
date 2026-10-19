import 'dart:convert';

import 'package:coolify_mobile/api/coolify_api.dart';
import 'package:coolify_mobile/components/application_config_section_editor.dart';
import 'package:coolify_mobile/pages/projects/application_config_schema.dart';
import 'package:coolify_mobile/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

void main() {
  final patches = <http.Request>[];

  http.Client fakeApi() => MockClient((request) async {
    if (request.method == 'PATCH') patches.add(request);
    return http.Response(
      jsonEncode({
        'uuid': 'a1',
        'name': 'web',
        'description': request.method == 'PATCH' ? 'changed' : 'old',
      }),
      200,
      headers: {'content-type': 'application/json'},
    );
  });

  Future<void> pumpEditor(WidgetTester tester) async {
    FlutterSecureStorage.setMockInitialValues({
      'coolify_base_url': 'https://coolify.test',
      'coolify_api_token': 'token',
    });
    tester.view.physicalSize = const Size(1080, 40000);
    tester.view.devicePixelRatio = 3;
    addTearDown(tester.view.reset);
    patches.clear();

    await http.runWithClient(() async {
      await tester.pumpWidget(
        ShadApp(
          theme: buildLightTheme(),
          builder: (context, child) => ShadSonner(child: child!),
          home: Scaffold(
            body: SingleChildScrollView(
              child: ApplicationConfigSectionEditor(
                application: ApplicationDetails({
                  'uuid': 'a1',
                  'name': 'web',
                  'description': 'old',
                }),
                groups: ApplicationConfigSchema.generalGroups,
              ),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
    }, fakeApi);
  }

  Future<void> tapSave(WidgetTester tester) async {
    await http.runWithClient(() async {
      await tester.tap(find.text('Save'));
      await tester.runAsync(
        () => Future<void>.delayed(const Duration(milliseconds: 200)),
      );
      await tester.pump();
    }, fakeApi);
  }

  testWidgets('saving without changes sends nothing', (tester) async {
    await pumpEditor(tester);
    await tapSave(tester);

    expect(patches, isEmpty);
    expect(find.text('Nothing to save.'), findsOneWidget);
    await tester.pump(const Duration(seconds: 10));
  });

  testWidgets('saving sends only the fields that changed', (tester) async {
    await pumpEditor(tester);

    await tester.enterText(
      find.descendant(
        of: find.byWidgetPredicate(
          (w) => w is ShadInputFormField && w.id == 'description',
        ),
        matching: find.byType(EditableText),
      ),
      'changed',
    );
    await tapSave(tester);

    expect(patches, hasLength(1));
    expect(patches.single.url.path, '/api/v1/applications/a1');
    expect(jsonDecode(patches.single.body), {'description': 'changed'});
    await tester.pump(const Duration(seconds: 10));
  });
}
