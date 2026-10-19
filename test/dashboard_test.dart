import 'dart:convert';

import 'package:coolify_mobile/pages/dashboard/index.dart';
import 'package:coolify_mobile/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

Map<String, dynamic> deployment(
  String uuid,
  String status,
  DateTime createdAt,
  String message,
) => {
  'deployment_uuid': uuid,
  'status': status,
  'created_at': createdAt.toUtc().toIso8601String(),
  'commit_message': message,
};

void main() {
  final now = DateTime.now();
  final requested = <Uri>[];

  http.Client fakeApi() => MockClient((request) async {
    requested.add(request.url);
    final path = request.url.path;
    Object body;
    if (path.endsWith('/applications')) {
      body = [
        {'uuid': 'a1', 'name': 'web'},
        {'uuid': 'a2', 'name': 'api'},
      ];
    } else if (path.endsWith('/deployments/applications/a1')) {
      body = {
        'count': 3,
        'deployments': [
          deployment(
            'd1',
            'finished',
            now.subtract(const Duration(hours: 5)),
            'fix css',
          ),
          deployment(
            'd2',
            'failed',
            now.subtract(const Duration(days: 2)),
            'bad config',
          ),
          deployment(
            'd3',
            'finished',
            now.subtract(const Duration(days: 9)),
            'oldest-a',
          ),
        ],
      };
    } else if (path.endsWith('/deployments/applications/a2')) {
      body = {
        'count': 4,
        'deployments': [
          deployment(
            'd4',
            'in_progress',
            now.subtract(const Duration(minutes: 2)),
            'add endpoint',
          ),
          deployment(
            'd5',
            'queued',
            now.subtract(const Duration(hours: 1)),
            'queued one',
          ),
          deployment(
            'd6',
            'cancelled-by-user',
            now.subtract(const Duration(days: 1)),
            'cancelled one',
          ),
          deployment(
            'd7',
            'finished',
            now.subtract(const Duration(days: 20)),
            'oldest-b',
          ),
        ],
      };
    } else {
      return http.Response('not found', 404);
    }
    return http.Response(
      jsonEncode(body),
      200,
      headers: {'content-type': 'application/json'},
    );
  });

  testWidgets('shows the 5 newest deployments across apps with badges', (
    tester,
  ) async {
    FlutterSecureStorage.setMockInitialValues({
      'coolify_base_url': 'https://coolify.test',
      'coolify_api_token': 'token',
    });

    await http.runWithClient(() async {
      await tester.pumpWidget(
        ShadApp(
          theme: buildLightTheme(),
          home: const Scaffold(body: DashboardPage()),
        ),
      );
      await tester.runAsync(
        () => Future<void>.delayed(const Duration(milliseconds: 200)),
      );
      await tester.pumpAndSettle();
    }, fakeApi);

    // Newest first: d4, d5, d1, d6, d2 — the two oldest are cut off.
    final order = [
      'add endpoint',
      'queued one',
      'fix css',
      'cancelled one',
      'bad config',
    ];
    final positions = [
      for (final m in order) tester.getTopLeft(find.text(m)).dy,
    ];
    expect(positions, [...positions]..sort());
    expect(find.text('oldest-a'), findsNothing);
    expect(find.text('oldest-b'), findsNothing);

    expect(find.text('In Progress'), findsOneWidget);
    expect(find.text('Queued'), findsOneWidget);
    expect(find.text('Finished'), findsOneWidget);
    expect(find.text('Failed'), findsOneWidget);
    expect(find.text('Cancelled By User'), findsOneWidget);
    expect(find.text('2 min ago'), findsOneWidget);

    expect(
      requested.where((u) => u.path.contains('/deployments/applications/')),
      everyElement(predicate<Uri>((u) => u.queryParameters['take'] == '5')),
    );
  });
}
