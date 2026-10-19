import '../core/api_exception.dart';
import '../core/api_value_reader.dart';
import '../core/base_api_client.dart';

class TeamsApi {
  TeamsApi({required String baseUrl, required String apiToken})
    : _client = BaseApiClient(baseUrl: baseUrl, apiToken: apiToken);

  final BaseApiClient _client;

  Future<List<TeamSummary>> list() async {
    final data = await _client.getList('/teams');
    return data.map(TeamSummary.fromJson).toList();
  }

  Future<TeamSummary> authenticated() async {
    // `/team` is the current endpoint; `/teams/current` is kept for older
    // Coolify versions.
    try {
      return TeamSummary.fromJson(await _client.getObject('/team'));
    } on ApiException {
      return TeamSummary.fromJson(await _client.getObject('/teams/current'));
    }
  }
}

class TeamSummary {
  const TeamSummary({
    required this.id,
    required this.uuid,
    required this.name,
    required this.description,
  });

  factory TeamSummary.fromJson(Map<String, dynamic> json) {
    return TeamSummary(
      id: ApiValueReader.integer(json, const ['id']),
      uuid: ApiValueReader.string(json, const ['uuid'], fallback: ''),
      name: ApiValueReader.string(json, const [
        'name',
      ], fallback: 'Unnamed team'),
      description: ApiValueReader.string(json, const [
        'description',
      ], fallback: ''),
    );
  }

  final int id;
  final String uuid;
  final String name;
  final String description;
}
