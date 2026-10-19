import 'dart:async';
import 'dart:convert';

import 'package:coolify_mobile/api/coolify_api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';

CoolifyApi apiWith(http.Client client) => http.runWithClient(
  () => CoolifyApi(baseUrl: 'https://coolify.test', apiToken: 'secret'),
  () => client,
);

http.Response json(Object body, [int status = 200]) => http.Response(
  jsonEncode(body),
  status,
  headers: {'content-type': 'application/json'},
);

void main() {
  group('CoolifyApi', () {
    test('sends the bearer token, JSON accept header and base path', () async {
      late http.Request seen;
      final api = apiWith(
        MockClient((request) async {
          seen = request;
          return json([]);
        }),
      );

      await api.projects.listProjects();

      expect(seen.url.toString(), 'https://coolify.test/api/v1/projects');
      expect(seen.headers['Authorization'], 'Bearer secret');
      expect(seen.headers['Accept'], 'application/json');
    });

    test('starts an application with POST (the old SDK used GET)', () async {
      late http.Request seen;
      final api = apiWith(
        MockClient((request) async {
          seen = request;
          return json({'message': 'Deployment request queued.'});
        }),
      );

      final response = await api.applications.startApplicationByUuid('abc');

      expect(seen.method, 'POST');
      expect(seen.url.path, '/api/v1/applications/abc/start');
      expect(response?.message, 'Deployment request queued.');
    });

    test('never sends unset fields of a request model as null', () async {
      late http.Request seen;
      final api = apiWith(
        MockClient((request) async {
          seen = request;
          return json({'uuid': 'k'});
        }),
      );

      await api.privateKeys.updatePrivateKey(
        'k',
        UpdatePrivateKeyRequest(name: 'renamed'),
      );

      expect(seen.method, 'PATCH');
      expect(jsonDecode(seen.body), {'name': 'renamed'});
    });

    test('sends exactly the validated map of requestFromMap', () async {
      late http.Request seen;
      final api = apiWith(
        MockClient((request) async {
          seen = request;
          return json({'uuid': 'a1'});
        }),
      );

      await api.applications.updateApplicationByUuid(
        'a1',
        requestFromMap(
          {'description': 'd', 'domains': null},
          UpdateApplicationByUuidRequest.fromJson,
          (request) => request.toJson(),
        ),
      );

      expect(jsonDecode(seen.body), {'description': 'd'});
    });

    test('reads the wrapped deployment list of an application', () async {
      final api = apiWith(
        MockClient(
          (request) async => json({
            'count': 1,
            'deployments': [
              {'deployment_uuid': 'd1', 'status': 'finished'},
            ],
          }),
        ),
      );

      final deployments = await api.listApplicationDeployments('abc', take: 5);

      expect(deployments.single.deploymentUuid, 'd1');
      expect(deployments.single.statusOrEmpty, 'finished');
    });

    test('lists databases despite the spec typing them as strings', () async {
      final api = apiWith(
        MockClient(
          (request) async => json([
            {'uuid': 'db1', 'name': 'main', 'postgres_user': 'u'},
          ]),
        ),
      );

      final databases = await api.listDatabases();

      expect(databases.single.name, 'main');
      expect(databases.single.serviceType, 'postgresql');
    });

    test(
      'isHealthy reads the status code of the plain-text endpoint',
      () async {
        expect(
          await apiWith(
            MockClient((_) async => http.Response('OK', 200)),
          ).isHealthy(),
          isTrue,
        );
        expect(
          await apiWith(
            MockClient((_) async => http.Response('down', 503)),
          ).isHealthy(),
          isFalse,
        );
      },
    );

    test(
      'keeps unknown keys of an application for the config editor',
      () async {
        final api = apiWith(
          MockClient(
            (request) async => json({
              'uuid': 'a1',
              'name': 'web',
              'is_force_https_enabled': true,
            }),
          ),
        );

        final details = await api.getApplicationDetails('a1');

        expect(details.name, 'web');
        expect(details.raw['is_force_https_enabled'], true);
      },
    );
  });

  group('requestFromMap', () {
    JsonMap toJson(CreateProjectRequest r) => r.toJson();

    test('builds the request from accepted fields', () {
      final request = requestFromMap(
        {'name': 'p', 'description': 'd'},
        CreateProjectRequest.fromJson,
        toJson,
      );
      expect(request.name, 'p');
      expect(request.description, 'd');
    });

    test('fails instead of silently dropping unknown fields', () {
      expect(
        () => requestFromMap(
          {'name': 'p', 'colour': 'red'},
          CreateProjectRequest.fromJson,
          toJson,
        ),
        throwsA(
          isA<ArgumentError>().having(
            (e) => e.message,
            'message',
            contains('colour'),
          ),
        ),
      );
    });

    test('fails when a value has the wrong type', () {
      expect(
        () =>
            requestFromMap({'name': 42}, CreateProjectRequest.fromJson, toJson),
        throwsArgumentError,
      );
    });

    test('ignores null values', () {
      final request = requestFromMap(
        {'name': 'p', 'description': null},
        CreateProjectRequest.fromJson,
        toJson,
      );
      expect(request.name, 'p');
    });
  });

  group('apiErrorMessage', () {
    test('uses the message of a JSON error body', () {
      expect(
        apiErrorMessage(ApiException(404, '{"message":"Not found."}')),
        'Not found.',
      );
    });

    test('includes the first validation error', () {
      expect(
        apiErrorMessage(
          ApiException(
            422,
            '{"message":"Validation failed.","errors":{"name":["Name is required."]}}',
          ),
        ),
        'Validation failed.: Name is required.',
      );
    });

    test('falls back to the status code and to timeouts', () {
      expect(apiErrorMessage(ApiException(500, null)), 'Request failed (500).');
      expect(apiErrorMessage(TimeoutException('x')), 'The request timed out.');
    });
  });
}
