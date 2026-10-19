//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SettingsApi {
  SettingsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get instance email settings
  ///
  /// Get instance-wide SMTP and Resend settings. Requires a root-team token belonging to a root-team admin or owner. Sensitive fields require the `read:sensitive` or `root` token ability.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getInstanceEmailSettingsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/settings/email';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get instance email settings
  ///
  /// Get instance-wide SMTP and Resend settings. Requires a root-team token belonging to a root-team admin or owner. Sensitive fields require the `read:sensitive` or `root` token ability.
  Future<void> getInstanceEmailSettings() async {
    final response = await getInstanceEmailSettingsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update instance email settings
  ///
  /// Update instance-wide SMTP and Resend settings. Requires `write:sensitive` and a root-team token belonging to a root-team admin or owner.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> updateInstanceEmailSettingsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/settings/email';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update instance email settings
  ///
  /// Update instance-wide SMTP and Resend settings. Requires `write:sensitive` and a root-team token belonging to a root-team admin or owner.
  Future<void> updateInstanceEmailSettings() async {
    final response = await updateInstanceEmailSettingsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
