import 'package:http/http.dart' as http;

class HealthApi {
  const HealthApi({required this.baseUrl, required this.apiToken});

  final String baseUrl;
  final String apiToken;

  /// GET /api/health — returns plain-text "ok" on success.
  Future<bool> check() async {
    final uri = Uri.parse('$baseUrl/api/health');
    final response = await http.get(uri).timeout(const Duration(seconds: 10));
    return response.statusCode == 200 &&
        response.body.trim().toLowerCase() == 'ok';
  }
}
