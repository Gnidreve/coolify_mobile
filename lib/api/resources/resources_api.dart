import '../core/api_value_reader.dart';
import '../core/base_api_client.dart';

class ResourcesApi {
  ResourcesApi({required String baseUrl, required String apiToken})
    : _client = BaseApiClient(baseUrl: baseUrl, apiToken: apiToken);

  final BaseApiClient _client;

  Future<List<ResourceSummary>> list() async {
    final data = await _client.getList('/resources');
    return data.map(ResourceSummary.fromJson).toList();
  }
}

class ResourceSummary {
  const ResourceSummary({
    required this.id,
    required this.uuid,
    required this.name,
    required this.type,
    required this.status,
    required this.description,
  });

  factory ResourceSummary.fromJson(Map<String, dynamic> json) {
    return ResourceSummary(
      id: ApiValueReader.integer(json, const ['id']),
      uuid: ApiValueReader.string(json, const ['uuid'], fallback: ''),
      name: ApiValueReader.string(
        json,
        const ['name'],
        fallback: 'Unnamed resource',
      ),
      type: ApiValueReader.string(
        json,
        const ['type', 'resource_type'],
        fallback: '',
      ),
      status: ApiValueReader.string(json, const ['status'], fallback: ''),
      description: ApiValueReader.string(
        json,
        const ['description'],
        fallback: '',
      ),
    );
  }

  final int id;
  final String uuid;
  final String name;
  final String type;
  final String status;
  final String description;
}
