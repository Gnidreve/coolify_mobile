import '../core/base_api_client.dart';

class DefaultApi {
  DefaultApi({required String baseUrl, required String apiToken})
    : _client = BaseApiClient(baseUrl: baseUrl, apiToken: apiToken);

  final BaseApiClient _client;

  Future<String> version() async {
    final body = await _client.get('/version');
    if (body is String && body.trim().isNotEmpty) {
      return body.trim();
    }
    if (body is Map<String, dynamic>) {
      final value = body['version'] ?? body['data'] ?? body['value'];
      if (value is String && value.trim().isNotEmpty) {
        return value.trim();
      }
    }

    return '';
  }
}
