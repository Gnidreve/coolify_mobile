import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'api_exception.dart';

class BaseApiClient {
  const BaseApiClient({required this.baseUrl, required this.apiToken});

  final String baseUrl;
  final String apiToken;

  Uri _uri(String path) => Uri.parse('$baseUrl/api/v1$path');

  Map<String, String> get _headers => {
    'Accept': 'application/json',
    'Authorization': 'Bearer $apiToken',
    'Content-Type': 'application/json',
  };

  Future<dynamic> get(String path) async {
    return _send(() => http.get(_uri(path), headers: _headers));
  }

  Future<List<Map<String, dynamic>>> getList(String path) async {
    final body = await get(path);
    final list = switch (body) {
      List() => body,
      Map() => _extractListFromMap(Map<String, dynamic>.from(body)),
      _ => null,
    };

    if (list == null) {
      throw const ApiException('Unexpected API response.');
    }

    return list
        .whereType<Map>()
        .map((item) => Map<String, dynamic>.from(item))
        .toList();
  }

  Future<Map<String, dynamic>> getObject(String path) async {
    final body = await get(path);
    final object = switch (body) {
      Map() => Map<String, dynamic>.from(body),
      List(length: 1) when body.first is Map<String, dynamic> =>
        Map<String, dynamic>.from(body.first as Map<String, dynamic>),
      _ => null,
    };

    if (object == null) {
      throw const ApiException('Unexpected API response.');
    }

    return object;
  }

  Future<Map<String, dynamic>> postObject(
    String path, {
    required Map<String, dynamic> body,
  }) async {
    final data = await _send(
      () => http.post(_uri(path), headers: _headers, body: jsonEncode(body)),
    );
    if (data is! Map) {
      return body;
    }
    return Map<String, dynamic>.from(data);
  }

  Future<Map<String, dynamic>> patchObject(
    String path, {
    required Map<String, dynamic> body,
  }) async {
    final data = await _send(
      () => http.patch(_uri(path), headers: _headers, body: jsonEncode(body)),
    );
    if (data is! Map) {
      return body;
    }
    return Map<String, dynamic>.from(data);
  }

  Future<dynamic> delete(String path) async {
    return _send(() => http.delete(_uri(path), headers: _headers));
  }

  Future<dynamic> _send(Future<http.Response> Function() request) async {
    try {
      final response = await request().timeout(const Duration(seconds: 15));
      final isJson =
          response.headers['content-type']?.contains('application/json') ??
          false;
      final body = response.body.trim();

      if (response.statusCode < 200 || response.statusCode >= 300) {
        String message = 'Request failed (${response.statusCode}).';
        if (isJson && body.isNotEmpty) {
          final json = jsonDecode(body);
          if (json is Map<String, dynamic>) {
            final detail = json['message'] ?? json['error'] ?? json['detail'];
            if (detail is String && detail.isNotEmpty) {
              message = detail;
            }
          }
        } else if (body.isNotEmpty) {
          message = body;
        }

        throw ApiException(message, statusCode: response.statusCode);
      }

      if (body.isEmpty) {
        return const <String, dynamic>{};
      }

      return isJson ? jsonDecode(body) : body;
    } on TimeoutException {
      throw const ApiException('The request timed out.');
    } on FormatException {
      throw const ApiException('The API returned invalid data.');
    } on ApiException {
      rethrow;
    } catch (error) {
      throw ApiException('Could not reach the Coolify API. $error');
    }
  }

  List<dynamic>? _extractListFromMap(Map<String, dynamic> body) {
    const candidateKeys = [
      'data',
      'items',
      'result',
      'deployments',
      'applications',
      'resources',
    ];

    for (final key in candidateKeys) {
      final value = body[key];
      if (value is List) {
        return value;
      }
    }

    return null;
  }
}
