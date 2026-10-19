import 'dart:async';
import 'dart:convert';

import 'package:coolify_api/api.dart';
import 'package:http/http.dart' as http;

import 'api_support.dart';
import 'app_models.dart';

export 'package:coolify_api/api.dart';

export 'api_support.dart';
export 'app_models.dart';

const _requestTimeout = Duration(seconds: 15);

/// Entry point for the Coolify API.
///
/// The endpoint classes and models in `packages/coolify_api` are generated
/// from `docs/openapi.json` (see `tool/generate_api.sh`); this class only
/// wires them to one instance and token.
///
///   final coolify = CoolifyApi(baseUrl: '...', apiToken: '...');
///   final applications = await coolify.applications.listApplications();
class CoolifyApi {
  CoolifyApi({required this.baseUrl, required this.apiToken})
    : client = _CoolifyApiClient(
        basePath: '$baseUrl/api/v1',
        authentication: HttpBearerAuth()..accessToken = apiToken,
      ) {
    client
      ..client = _TimeoutClient(client.client)
      // Without it Laravel answers validation errors with a redirect/HTML.
      ..addDefaultHeader('Accept', 'application/json');

    applications = ApplicationsApi(client);
    databases = DatabasesApi(client);
    defaultApi = DefaultApi(client);
    deployments = DeploymentsApi(client);
    githubApps = GitHubAppsApi(client);
    privateKeys = PrivateKeysApi(client);
    projects = ProjectsApi(client);
    servers = ServersApi(client);
    services = ServicesApi(client);
    teams = TeamsApi(client);
  }

  final String baseUrl;
  final String apiToken;
  final ApiClient client;

  late final ApplicationsApi applications;
  late final DatabasesApi databases;
  late final DefaultApi defaultApi;
  late final DeploymentsApi deployments;
  late final GitHubAppsApi githubApps;
  late final PrivateKeysApi privateKeys;
  late final ProjectsApi projects;
  late final ServersApi servers;
  late final ServicesApi services;
  late final TeamsApi teams;

  /// `GET /health` is plain text ("OK"), so this reads the status code.
  Future<bool> isHealthy() async {
    final response = await defaultApi.healthcheckWithHttpInfo();
    return response.statusCode == 200;
  }

  /// `GET /databases`. The spec types the response as a string, so it is
  /// decoded by hand.
  Future<List<DatabaseResource>> listDatabases() async {
    final response = await databases.listDatabasesWithHttpInfo();
    return decodeJsonList(response).map(DatabaseResource.fromJson).toList();
  }

  /// `GET /databases/{uuid}`; see [listDatabases].
  Future<DatabaseResource> getDatabase(String uuid) async {
    final response = await databases.getDatabaseByUuidWithHttpInfo(uuid);
    return DatabaseResource.fromJson(decodeJsonObject(response));
  }

  /// `GET /applications/{uuid}` with every key the server sends.
  Future<ApplicationDetails> getApplicationDetails(String uuid) async {
    final response = await applications.getApplicationByUuidWithHttpInfo(uuid);
    return ApplicationDetails(decodeJsonObject(response));
  }

  /// `PATCH /applications/{uuid}` from a UI-assembled map; rejects fields the
  /// API does not accept instead of silently dropping them.
  Future<ApplicationDetails> updateApplication(
    String uuid,
    JsonMap body,
  ) async {
    await applications.updateApplicationByUuid(
      uuid,
      requestFromMap(
        body,
        UpdateApplicationByUuidRequest.fromJson,
        (request) => request.toJson(),
      ),
    );
    return getApplicationDetails(uuid);
  }

  /// `GET /servers/{uuid}` as raw JSON: the form needs `private_key_uuid`,
  /// which the spec's `Server` schema does not list.
  Future<JsonMap> getServerJson(String uuid) async {
    final response = await servers.getServerByUuidWithHttpInfo(uuid);
    return decodeJsonObject(response);
  }

  /// `GET /deployments/applications/{uuid}`. The response is wrapped
  /// (`{count, deployments}`) in a way the spec does not describe.
  Future<List<ApplicationDeploymentQueue>> listApplicationDeployments(
    String applicationUuid, {
    int? skip,
    int? take,
  }) async {
    final response = await deployments.listDeploymentsByAppUuidWithHttpInfo(
      applicationUuid,
      skip: skip,
      take: take,
    );
    return decodeJsonList(response, wrapperKey: 'deployments')
        .map(ApplicationDeploymentQueue.fromJson)
        .whereType<ApplicationDeploymentQueue>()
        .toList();
  }
}

/// Makes the generated client send what the app intends instead of what the
/// generated `toJson` makes of it (see [intendedBodies]).
class _CoolifyApiClient extends ApiClient {
  _CoolifyApiClient({required super.basePath, super.authentication});

  @override
  // ignore: deprecated_member_use
  String serialize(Object? value) {
    if (value == null) return '';
    final intended = intendedBodies[value];
    if (intended != null) return jsonEncode(intended);
    if (value is! Map && value is! List && value is! String) {
      // A model built by hand: unset fields must not be sent as null.
      return jsonEncode(withoutNulls((value as dynamic).toJson()));
    }
    // ignore: deprecated_member_use
    return super.serialize(value);
  }
}

/// Adds the request timeout the generated client does not have.
class _TimeoutClient extends http.BaseClient {
  _TimeoutClient(this._inner);

  final http.Client _inner;

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) => _inner
      .send(request)
      .timeout(
        _requestTimeout,
        onTimeout: () => throw TimeoutException('The request timed out.'),
      );

  @override
  void close() => _inner.close();
}
