//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CloudTokensApi {
  CloudTokensApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Cloud Provider Token
  ///
  /// Create a new cloud provider token. The token will be validated before being stored.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateCloudTokenRequest] createCloudTokenRequest (required):
  ///   Cloud provider token details
  Future<Response> createCloudTokenWithHttpInfo(CreateCloudTokenRequest createCloudTokenRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/cloud-tokens';

    // ignore: prefer_final_locals
    Object? postBody = createCloudTokenRequest;

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

  /// Create Cloud Provider Token
  ///
  /// Create a new cloud provider token. The token will be validated before being stored.
  ///
  /// Parameters:
  ///
  /// * [CreateCloudTokenRequest] createCloudTokenRequest (required):
  ///   Cloud provider token details
  Future<CreateCloudToken201Response?> createCloudToken(CreateCloudTokenRequest createCloudTokenRequest,) async {
    final response = await createCloudTokenWithHttpInfo(createCloudTokenRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateCloudToken201Response',) as CreateCloudToken201Response;
    
    }
    return null;
  }

  /// Delete Cloud Provider Token
  ///
  /// Delete cloud provider token by UUID. Cannot delete if token is used by any servers.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the cloud provider token.
  Future<Response> deleteCloudTokenByUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/cloud-tokens/{uuid}'
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

  /// Delete Cloud Provider Token
  ///
  /// Delete cloud provider token by UUID. Cannot delete if token is used by any servers.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the cloud provider token.
  Future<DeleteCloudTokenByUuid200Response?> deleteCloudTokenByUuid(String uuid,) async {
    final response = await deleteCloudTokenByUuidWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeleteCloudTokenByUuid200Response',) as DeleteCloudTokenByUuid200Response;
    
    }
    return null;
  }

  /// Get Cloud Provider Token
  ///
  /// Get cloud provider token by UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Token UUID
  Future<Response> getCloudTokenByUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/cloud-tokens/{uuid}'
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

  /// Get Cloud Provider Token
  ///
  /// Get cloud provider token by UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Token UUID
  Future<GetCloudTokenByUuid200Response?> getCloudTokenByUuid(String uuid,) async {
    final response = await getCloudTokenByUuidWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetCloudTokenByUuid200Response',) as GetCloudTokenByUuid200Response;
    
    }
    return null;
  }

  /// List Cloud Provider Tokens
  ///
  /// List all cloud provider tokens for the authenticated team.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listCloudTokensWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/cloud-tokens';

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

  /// List Cloud Provider Tokens
  ///
  /// List all cloud provider tokens for the authenticated team.
  Future<List<ListCloudTokens200ResponseInner>?> listCloudTokens() async {
    final response = await listCloudTokensWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ListCloudTokens200ResponseInner>') as List)
        .cast<ListCloudTokens200ResponseInner>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Cloud Provider Token
  ///
  /// Update cloud provider token name.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Token UUID
  ///
  /// * [UpdateCloudTokenByUuidRequest] updateCloudTokenByUuidRequest (required):
  ///   Cloud provider token updated.
  Future<Response> updateCloudTokenByUuidWithHttpInfo(String uuid, UpdateCloudTokenByUuidRequest updateCloudTokenByUuidRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/cloud-tokens/{uuid}'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = updateCloudTokenByUuidRequest;

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

  /// Update Cloud Provider Token
  ///
  /// Update cloud provider token name.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Token UUID
  ///
  /// * [UpdateCloudTokenByUuidRequest] updateCloudTokenByUuidRequest (required):
  ///   Cloud provider token updated.
  Future<CreatePublicApplication201Response?> updateCloudTokenByUuid(String uuid, UpdateCloudTokenByUuidRequest updateCloudTokenByUuidRequest,) async {
    final response = await updateCloudTokenByUuidWithHttpInfo(uuid, updateCloudTokenByUuidRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreatePublicApplication201Response',) as CreatePublicApplication201Response;
    
    }
    return null;
  }

  /// Validate Cloud Provider Token
  ///
  /// Validate a cloud provider token against the provider API.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Token UUID
  Future<Response> validateCloudTokenByUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/cloud-tokens/{uuid}/validate'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Validate Cloud Provider Token
  ///
  /// Validate a cloud provider token against the provider API.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Token UUID
  Future<ValidateCloudTokenByUuid200Response?> validateCloudTokenByUuid(String uuid,) async {
    final response = await validateCloudTokenByUuidWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ValidateCloudTokenByUuid200Response',) as ValidateCloudTokenByUuid200Response;
    
    }
    return null;
  }
}
