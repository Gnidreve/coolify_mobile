import 'dart:async';
import 'dart:convert';

import 'package:coolify_api/api.dart';
import 'package:http/http.dart' as http;

typedef JsonMap = Map<String, dynamic>;

/// The exact JSON to send for a request model built by [requestFromMap].
///
/// The generated `toJson` writes every unset field as `null` (and unset
/// lists as `[]`), which a PATCH would apply as "clear this field".
final Expando<JsonMap> intendedBodies = Expando<JsonMap>('intendedBodies');

/// Removes nulls (recursively) from a generated model's `toJson` output.
Object? withoutNulls(Object? value) {
  if (value is Map) {
    return {
      for (final entry in value.entries)
        if (entry.value != null) entry.key: withoutNulls(entry.value),
    };
  }
  if (value is List) return value.map(withoutNulls).toList();
  return value;
}

/// Human-readable message for anything thrown by the API client.
String apiErrorMessage(Object error) {
  if (error is TimeoutException) return 'The request timed out.';

  if (error is ApiException) {
    final body = error.message;
    if (body != null && body.isNotEmpty) {
      try {
        final json = jsonDecode(body);
        if (json is Map) {
          final message = json['message'] ?? json['error'] ?? json['detail'];
          final errors = json['errors'];
          if (errors is Map && errors.isNotEmpty) {
            final first = errors.values.first;
            final detail = first is List && first.isNotEmpty
                ? first.first
                : first;
            return '${message ?? 'Validation failed'}: $detail';
          }
          if (message is String && message.isNotEmpty) return message;
        }
      } on FormatException {
        // Not JSON; fall through to the raw body.
      }
      return body;
    }
    return 'Request failed (${error.code}).';
  }

  return error.toString();
}

/// Decodes a list response by hand, optionally unwrapping `{wrapperKey: [...]}`.
List<JsonMap> decodeJsonList(http.Response response, {String? wrapperKey}) {
  _throwIfFailed(response);
  final body = jsonDecode(utf8.decode(response.bodyBytes));
  final list = switch (body) {
    List() => body,
    Map() when wrapperKey != null && body[wrapperKey] is List =>
      body[wrapperKey] as List,
    Map() when body['data'] is List => body['data'] as List,
    _ => throw ApiException(response.statusCode, 'Unexpected API response.'),
  };
  return list.whereType<Map>().map((e) => JsonMap.from(e)).toList();
}

JsonMap decodeJsonObject(http.Response response) {
  _throwIfFailed(response);
  final body = jsonDecode(utf8.decode(response.bodyBytes));
  if (body is Map) return JsonMap.from(body);
  throw ApiException(response.statusCode, 'Unexpected API response.');
}

void _throwIfFailed(http.Response response) {
  if (response.statusCode >= 400) {
    throw ApiException(response.statusCode, utf8.decode(response.bodyBytes));
  }
}

/// Builds a generated request model from a UI-assembled map and fails loudly
/// if the model dropped a field.
///
/// The generated `fromJson` silently ignores keys it does not know or whose
/// type does not match the spec, which would mean saving a form without
/// saving all of its values. A dropped field shows up as null (or missing) in
/// `toJson`, so a non-null input that comes back null was rejected.
T requestFromMap<T>(
  JsonMap body,
  T? Function(dynamic) fromJson,
  JsonMap Function(T) toJson,
) {
  final request = fromJson(body);
  if (request == null) {
    throw ArgumentError('Request body could not be built.');
  }

  final accepted = toJson(request);
  final dropped = body.entries
      .where((e) => e.value != null && accepted[e.key] == null)
      .map((e) => e.key)
      .toList();
  if (dropped.isNotEmpty) {
    throw ArgumentError(
      'Fields not accepted by the API: ${dropped.join(', ')}',
    );
  }
  intendedBodies[request as Object] = {
    for (final entry in body.entries)
      if (entry.value != null) entry.key: entry.value,
  };
  return request;
}
