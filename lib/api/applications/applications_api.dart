import '../core/base_api_client.dart';

class ApplicationsApi {
  ApplicationsApi({required String baseUrl, required String apiToken})
    : _client = BaseApiClient(baseUrl: baseUrl, apiToken: apiToken);

  final BaseApiClient _client;

  Future<List<ApplicationResource>> list() async {
    final data = await _client.getList('/applications');
    return data.map(ApplicationResource.fromJson).toList();
  }

  Future<ApplicationResource> get(String uuid) async {
    final data = await _client.getObject('/applications/$uuid');
    return ApplicationResource.fromJson(data);
  }

  Future<ApplicationResource> update(
    String uuid, {
    required Map<String, dynamic> body,
  }) async {
    final data = await _client.patchObject('/applications/$uuid', body: body);
    if (data.isNotEmpty) {
      return ApplicationResource.fromJson(data);
    }

    return get(uuid);
  }

  Future<String> delete(String uuid) async {
    final data = await _client.delete('/applications/$uuid');
    if (data is Map<String, dynamic>) {
      final message = data['message'] ?? data['msg'] ?? data['detail'];
      if (message is String && message.trim().isNotEmpty) {
        return message;
      }
    }
    return 'Application deleted.';
  }

  Future<String> logs(String uuid, {int lines = 500}) async {
    final data = await _client.get('/applications/$uuid/logs?lines=$lines');
    if (data is String) {
      return data;
    }
    if (data is Map<String, dynamic>) {
      final logs = data['logs'] ?? data['data'] ?? data['output'];
      if (logs is String) {
        return logs;
      }
    }
    return '';
  }

  Future<String> start(String uuid) => _runAction(uuid, 'start');

  Future<String> stop(String uuid) => _runAction(uuid, 'stop');

  Future<String> restart(String uuid) => _runAction(uuid, 'restart');

  Future<ApplicationCreateResponse> createPublic({
    required Map<String, dynamic> body,
  }) async {
    final data = await _client.postObject('/applications/public', body: body);
    return ApplicationCreateResponse.fromJson(data);
  }

  Future<ApplicationCreateResponse> createPrivateGithubApp({
    required Map<String, dynamic> body,
  }) async {
    final data = await _client.postObject(
      '/applications/private-gh-app',
      body: body,
    );
    return ApplicationCreateResponse.fromJson(data);
  }

  Future<ApplicationCreateResponse> createPrivateDeployKey({
    required Map<String, dynamic> body,
  }) async {
    final data = await _client.postObject(
      '/applications/private-deploy-key',
      body: body,
    );
    return ApplicationCreateResponse.fromJson(data);
  }

  Future<ApplicationCreateResponse> createDockerfile({
    required Map<String, dynamic> body,
  }) async {
    final data = await _client.postObject('/applications/dockerfile', body: body);
    return ApplicationCreateResponse.fromJson(data);
  }

  Future<ApplicationCreateResponse> createDockerImage({
    required Map<String, dynamic> body,
  }) async {
    final data = await _client.postObject('/applications/dockerimage', body: body);
    return ApplicationCreateResponse.fromJson(data);
  }

  Future<ApplicationCreateResponse> createDockerCompose({
    required Map<String, dynamic> body,
  }) async {
    final data = await _client.postObject(
      '/applications/dockercompose',
      body: body,
    );
    return ApplicationCreateResponse.fromJson(data);
  }

  Future<String> _runAction(String uuid, String action) async {
    final data = await _client.getObject('/applications/$uuid/$action');
    final message = data['message'] ?? data['msg'] ?? data['detail'];
    if (message is String && message.trim().isNotEmpty) {
      return message;
    }
    return 'Application $action request sent.';
  }
}

class ApplicationCreateResponse {
  const ApplicationCreateResponse({required this.uuid});

  factory ApplicationCreateResponse.fromJson(Map<String, dynamic> json) {
    return ApplicationCreateResponse(uuid: json['uuid'] as String? ?? '');
  }

  final String uuid;
}

class ApplicationResource {
  const ApplicationResource({
    required this.id,
    required this.uuid,
    required this.name,
    required this.description,
    required this.fqdn,
    required this.status,
    required this.environmentId,
    required this.gitBranch,
    required this.buildPack,
    required this.updatedAt,
    required this.rawJson,
  });

  factory ApplicationResource.fromJson(Map<String, dynamic> json) {
    return ApplicationResource(
      id: json['id'] as int? ?? 0,
      uuid: json['uuid'] as String? ?? '',
      name: json['name'] as String? ?? 'Unnamed application',
      description: json['description'] as String? ?? '',
      fqdn: json['fqdn'] as String? ?? '',
      status: json['status'] as String? ?? '',
      environmentId: json['environment_id'] as int? ?? 0,
      gitBranch: json['git_branch'] as String? ?? '',
      buildPack: json['build_pack'] as String? ?? '',
      updatedAt: json['updated_at'] as String? ?? '',
      rawJson: Map<String, dynamic>.from(json),
    );
  }

  final int id;
  final String uuid;
  final String name;
  final String description;
  final String fqdn;
  final String status;
  final int environmentId;
  final String gitBranch;
  final String buildPack;
  final String updatedAt;
  final Map<String, dynamic> rawJson;

  /// Asset name for icon lookup in lib/assets/applications/.
  String get iconAssetName => switch (buildPack) {
    'dockercompose' => 'docker_compose',
    _ => buildPack,
  };
}
