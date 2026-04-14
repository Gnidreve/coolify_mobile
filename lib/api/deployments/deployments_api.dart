import '../core/base_api_client.dart';

class DeploymentsApi {
  DeploymentsApi({required String baseUrl, required String apiToken})
    : _client = BaseApiClient(baseUrl: baseUrl, apiToken: apiToken);

  final BaseApiClient _client;

  Future<List<DeploymentResource>> list() async {
    final data = await _client.getList('/deployments');
    return data.map(DeploymentResource.fromJson).toList();
  }

  Future<List<DeploymentResource>> listForApplication(String uuid) async {
    final data = await _client.getList('/deployments/applications/$uuid');
    return data.map(DeploymentResource.fromJson).toList();
  }

  Future<DeploymentResource> get(String uuid) async {
    final data = await _client.getObject('/deployments/$uuid');
    return DeploymentResource.fromJson(data);
  }
}

class DeploymentResource {
  const DeploymentResource({
    required this.id,
    required this.applicationId,
    required this.deploymentUuid,
    required this.dockerRegistryImageTag,
    required this.forceRebuild,
    required this.pullRequestId,
    required this.status,
    required this.isWebhook,
    required this.isApi,
    required this.applicationName,
    required this.serverName,
    required this.commit,
    required this.commitMessage,
    required this.logs,
    required this.createdAt,
    required this.updatedAt,
    required this.deploymentUrl,
    required this.currentProcessId,
    required this.restartOnly,
    required this.gitType,
    required this.destinationId,
    required this.onlyThisServer,
    required this.rollback,
  });

  factory DeploymentResource.fromJson(Map<String, dynamic> json) {
    return DeploymentResource(
      id: json['id'] as int? ?? 0,
      applicationId: json['application_id'] as String? ?? '',
      deploymentUuid: json['deployment_uuid'] as String? ?? '',
      dockerRegistryImageTag:
          json['docker_registry_image_tag'] as String? ?? '',
      forceRebuild: json['force_rebuild'] as bool? ?? false,
      pullRequestId: json['pull_request_id'] as int? ?? 0,
      status: json['status'] as String? ?? '',
      isWebhook: json['is_webhook'] as bool? ?? false,
      isApi: json['is_api'] as bool? ?? false,
      applicationName: json['application_name'] as String? ?? 'Unknown app',
      serverName: json['server_name'] as String? ?? 'Unknown server',
      commit: json['commit'] as String? ?? '',
      commitMessage: json['commit_message'] as String? ?? '',
      logs: json['logs'] as String? ?? '',
      createdAt: json['created_at'] as String? ?? '',
      updatedAt: json['updated_at'] as String? ?? '',
      deploymentUrl: json['deployment_url'] as String? ?? '',
      currentProcessId: json['current_process_id'] as String? ?? '',
      restartOnly: json['restart_only'] as bool? ?? false,
      gitType: json['git_type'] as String? ?? '',
      destinationId: json['destination_id'] as String? ?? '',
      onlyThisServer: json['only_this_server'] as bool? ?? false,
      rollback: json['rollback'] as bool? ?? false,
    );
  }

  final int id;
  final String applicationId;
  final String deploymentUuid;
  final String dockerRegistryImageTag;
  final bool forceRebuild;
  final int pullRequestId;
  final String status;
  final bool isWebhook;
  final bool isApi;
  final String applicationName;
  final String serverName;
  final String commit;
  final String commitMessage;
  final String logs;
  final String createdAt;
  final String updatedAt;
  final String deploymentUrl;
  final String currentProcessId;
  final bool restartOnly;
  final String gitType;
  final String destinationId;
  final bool onlyThisServer;
  final bool rollback;
}
