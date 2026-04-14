import '../core/base_api_client.dart';

class ServersApi {
  ServersApi({required String baseUrl, required String apiToken})
    : _client = BaseApiClient(baseUrl: baseUrl, apiToken: apiToken);

  final BaseApiClient _client;

  Future<List<ServerResource>> list() async {
    final data = await _client.getList('/servers');
    return data.map(ServerResource.fromJson).toList();
  }

  Future<ServerResource> get(String uuid) async {
    final data = await _client.getObject('/servers/$uuid');
    return ServerResource.fromJson(data);
  }

  Future<ServerResource> create({required Map<String, dynamic> body}) async {
    final data = await _client.postObject('/servers', body: body);
    return ServerResource.fromJson(data);
  }

  Future<ServerResource> update(
    String uuid, {
    required Map<String, dynamic> body,
  }) async {
    final data = await _client.patchObject('/servers/$uuid', body: body);
    return ServerResource.fromJson(data);
  }
}

class ServerResource {
  const ServerResource({
    required this.id,
    required this.uuid,
    required this.name,
    required this.description,
    required this.ip,
    required this.user,
    required this.port,
    required this.privateKeyUuid,
    required this.proxyType,
    required this.settings,
  });

  factory ServerResource.fromJson(Map<String, dynamic> json) {
    return ServerResource(
      id: json['id'] as int? ?? 0,
      uuid: json['uuid'] as String? ?? '',
      name: json['name'] as String? ?? 'Unnamed server',
      description: json['description'] as String? ?? '',
      ip: json['ip'] as String? ?? '',
      user: json['user'] as String? ?? '',
      port: json['port'] as int? ?? 22,
      privateKeyUuid: json['private_key_uuid'] as String? ?? '',
      proxyType: json['proxy_type'] as String? ?? '',
      settings: ServerSettings.fromJson(
        Map<String, dynamic>.from(json['settings'] as Map? ?? const {}),
      ),
    );
  }

  final int id;
  final String uuid;
  final String name;
  final String description;
  final String ip;
  final String user;
  final int port;
  final String privateKeyUuid;
  final String proxyType;
  final ServerSettings settings;
}

class ServerSettings {
  const ServerSettings({
    required this.concurrentBuilds,
    required this.dynamicTimeout,
    required this.deploymentQueueLimit,
    required this.serverDiskUsageNotificationThreshold,
    required this.serverDiskUsageCheckFrequency,
    required this.isBuildServer,
  });

  factory ServerSettings.fromJson(Map<String, dynamic> json) {
    return ServerSettings(
      concurrentBuilds: json['concurrent_builds'] as int? ?? 1,
      dynamicTimeout: json['dynamic_timeout'] as int? ?? 30,
      deploymentQueueLimit: json['deployment_queue_limit'] as int? ?? 1,
      serverDiskUsageNotificationThreshold:
          json['server_disk_usage_notification_threshold'] as int? ??
          json['docker_cleanup_threshold'] as int? ??
          80,
      serverDiskUsageCheckFrequency:
          json['server_disk_usage_check_frequency'] as String? ??
          json['docker_cleanup_frequency'] as String? ??
          '',
      isBuildServer: json['is_build_server'] as bool? ?? false,
    );
  }

  final int concurrentBuilds;
  final int dynamicTimeout;
  final int deploymentQueueLimit;
  final int serverDiskUsageNotificationThreshold;
  final String serverDiskUsageCheckFrequency;
  final bool isBuildServer;
}
