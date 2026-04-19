import '../core/base_api_client.dart';

class GithubAppsApi {
  GithubAppsApi({required String baseUrl, required String apiToken})
    : _client = BaseApiClient(baseUrl: baseUrl, apiToken: apiToken);

  final BaseApiClient _client;

  Future<List<GithubAppResource>> list() async {
    final data = await _client.getList('/github-apps');
    return data.map(GithubAppResource.fromJson).toList();
  }
}

class GithubAppResource {
  const GithubAppResource({
    required this.id,
    required this.uuid,
    required this.name,
    required this.organization,
  });

  factory GithubAppResource.fromJson(Map<String, dynamic> json) {
    return GithubAppResource(
      id: json['id'] as int? ?? 0,
      uuid: json['uuid'] as String? ?? '',
      name: json['name'] as String? ?? '',
      organization: json['organization'] as String? ?? '',
    );
  }

  final int id;
  final String uuid;
  final String name;
  final String organization;
}
