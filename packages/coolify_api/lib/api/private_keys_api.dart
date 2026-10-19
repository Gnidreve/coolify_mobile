//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PrivateKeysApi {
  PrivateKeysApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create
  ///
  /// Create a new private key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreatePrivateKeyRequest] createPrivateKeyRequest (required):
  Future<Response> createPrivateKeyWithHttpInfo(CreatePrivateKeyRequest createPrivateKeyRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/security/keys';

    // ignore: prefer_final_locals
    Object? postBody = createPrivateKeyRequest;

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

  /// Create
  ///
  /// Create a new private key.
  ///
  /// Parameters:
  ///
  /// * [CreatePrivateKeyRequest] createPrivateKeyRequest (required):
  Future<CreatePublicApplication201Response?> createPrivateKey(CreatePrivateKeyRequest createPrivateKeyRequest,) async {
    final response = await createPrivateKeyWithHttpInfo(createPrivateKeyRequest,);
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

  /// Delete
  ///
  /// Delete a private key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Private Key UUID
  Future<Response> deletePrivateKeyByUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/security/keys/{uuid}'
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

  /// Delete
  ///
  /// Delete a private key.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Private Key UUID
  Future<DeletePrivateKeyByUuid200Response?> deletePrivateKeyByUuid(String uuid,) async {
    final response = await deletePrivateKeyByUuidWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeletePrivateKeyByUuid200Response',) as DeletePrivateKeyByUuid200Response;
    
    }
    return null;
  }

  /// Get
  ///
  /// Get key by UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Private Key UUID
  Future<Response> getPrivateKeyByUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/security/keys/{uuid}'
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

  /// Get
  ///
  /// Get key by UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Private Key UUID
  Future<PrivateKey?> getPrivateKeyByUuid(String uuid,) async {
    final response = await getPrivateKeyByUuidWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PrivateKey',) as PrivateKey;
    
    }
    return null;
  }

  /// List
  ///
  /// List all private keys.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listPrivateKeysWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/security/keys';

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

  /// List
  ///
  /// List all private keys.
  Future<List<PrivateKey>?> listPrivateKeys() async {
    final response = await listPrivateKeysWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PrivateKey>') as List)
        .cast<PrivateKey>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update
  ///
  /// Update a private key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Private Key UUID
  ///
  /// * [UpdatePrivateKeyRequest] updatePrivateKeyRequest (required):
  Future<Response> updatePrivateKeyWithHttpInfo(String uuid, UpdatePrivateKeyRequest updatePrivateKeyRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/security/keys/{uuid}'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = updatePrivateKeyRequest;

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

  /// Update
  ///
  /// Update a private key.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Private Key UUID
  ///
  /// * [UpdatePrivateKeyRequest] updatePrivateKeyRequest (required):
  Future<CreatePublicApplication201Response?> updatePrivateKey(String uuid, UpdatePrivateKeyRequest updatePrivateKeyRequest,) async {
    final response = await updatePrivateKeyWithHttpInfo(uuid, updatePrivateKeyRequest,);
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
}
