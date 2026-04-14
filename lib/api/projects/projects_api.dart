import '../core/base_api_client.dart';

class ProjectsApi {
  ProjectsApi({required String baseUrl, required String apiToken})
    : _client = BaseApiClient(baseUrl: baseUrl, apiToken: apiToken);

  final BaseApiClient _client;

  Future<List<ProjectSummary>> list() async {
    final data = await _client.getList('/projects');
    return data.map(ProjectSummary.fromJson).toList();
  }

  Future<List<ProjectEnvironment>> listEnvironments(String projectUuid) async {
    final data = await _client.getList('/projects/$projectUuid/environments');
    return data.map(ProjectEnvironment.fromJson).toList();
  }
}

class ProjectSummary {
  const ProjectSummary({
    required this.id,
    required this.uuid,
    required this.name,
    required this.description,
  });

  factory ProjectSummary.fromJson(Map<String, dynamic> json) {
    return ProjectSummary(
      id: json['id'] as int? ?? 0,
      uuid: json['uuid'] as String? ?? '',
      name: json['name'] as String? ?? 'Unnamed project',
      description: json['description'] as String? ?? '',
    );
  }

  final int id;
  final String uuid;
  final String name;
  final String description;
}

class ProjectEnvironment {
  const ProjectEnvironment({
    required this.id,
    required this.uuid,
    required this.name,
    required this.projectUuid,
    required this.projectId,
    required this.createdAt,
    required this.updatedAt,
    required this.description,
  });

  factory ProjectEnvironment.fromJson(Map<String, dynamic> json) {
    return ProjectEnvironment(
      id: json['id'] as int? ?? 0,
      uuid: json['uuid'] as String? ?? '',
      name: json['name'] as String? ?? 'Unnamed environment',
      projectUuid: json['project_uuid'] as String? ?? '',
      projectId: json['project_id'] as int? ?? 0,
      createdAt: json['created_at'] as String? ?? '',
      updatedAt: json['updated_at'] as String? ?? '',
      description: json['description'] as String? ?? '',
    );
  }

  final int id;
  final String uuid;
  final String name;
  final String projectUuid;
  final int projectId;
  final String createdAt;
  final String updatedAt;
  final String description;
}
