//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CloudInitScriptsApi {
  CloudInitScriptsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Cloud-init Script
  ///
  /// Create a new cloud-init script for the authenticated team.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateCloudInitScriptRequest] createCloudInitScriptRequest (required):
  Future<Response> createCloudInitScriptWithHttpInfo(CreateCloudInitScriptRequest createCloudInitScriptRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/cloud-init-scripts';

    // ignore: prefer_final_locals
    Object? postBody = createCloudInitScriptRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create Cloud-init Script
  ///
  /// Create a new cloud-init script for the authenticated team.
  ///
  /// Parameters:
  ///
  /// * [CreateCloudInitScriptRequest] createCloudInitScriptRequest (required):
  Future<void> createCloudInitScript(CreateCloudInitScriptRequest createCloudInitScriptRequest,) async {
    final response = await createCloudInitScriptWithHttpInfo(createCloudInitScriptRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete Cloud-init Script
  ///
  /// Delete a cloud-init script by UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  Future<Response> deleteCloudInitScriptByUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/cloud-init-scripts/{uuid}'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete Cloud-init Script
  ///
  /// Delete a cloud-init script by UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  Future<void> deleteCloudInitScriptByUuid(String uuid,) async {
    final response = await deleteCloudInitScriptByUuidWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Cloud-init Script
  ///
  /// Get a cloud-init script by UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  Future<Response> getCloudInitScriptByUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/cloud-init-scripts/{uuid}'
      .replaceAll('{uuid}', uuid);

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

  /// Get Cloud-init Script
  ///
  /// Get a cloud-init script by UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  Future<void> getCloudInitScriptByUuid(String uuid,) async {
    final response = await getCloudInitScriptByUuidWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List Cloud-init Scripts
  ///
  /// List all cloud-init scripts for the authenticated team.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listCloudInitScriptsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/cloud-init-scripts';

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

  /// List Cloud-init Scripts
  ///
  /// List all cloud-init scripts for the authenticated team.
  Future<void> listCloudInitScripts() async {
    final response = await listCloudInitScriptsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update Cloud-init Script
  ///
  /// Update a cloud-init script by UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///
  /// * [UpdateCloudInitScriptByUuidRequest] updateCloudInitScriptByUuidRequest (required):
  Future<Response> updateCloudInitScriptByUuidWithHttpInfo(String uuid, UpdateCloudInitScriptByUuidRequest updateCloudInitScriptByUuidRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/cloud-init-scripts/{uuid}'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = updateCloudInitScriptByUuidRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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

  /// Update Cloud-init Script
  ///
  /// Update a cloud-init script by UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///
  /// * [UpdateCloudInitScriptByUuidRequest] updateCloudInitScriptByUuidRequest (required):
  Future<void> updateCloudInitScriptByUuid(String uuid, UpdateCloudInitScriptByUuidRequest updateCloudInitScriptByUuidRequest,) async {
    final response = await updateCloudInitScriptByUuidWithHttpInfo(uuid, updateCloudInitScriptByUuidRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
