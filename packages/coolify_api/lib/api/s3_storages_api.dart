//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class S3StoragesApi {
  S3StoragesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create S3 Storage
  ///
  /// Create a new S3 storage configuration for the authenticated team.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateS3StorageRequest] createS3StorageRequest (required):
  ///   S3 storage details
  Future<Response> createS3StorageWithHttpInfo(CreateS3StorageRequest createS3StorageRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/s3-storages';

    // ignore: prefer_final_locals
    Object? postBody = createS3StorageRequest;

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

  /// Create S3 Storage
  ///
  /// Create a new S3 storage configuration for the authenticated team.
  ///
  /// Parameters:
  ///
  /// * [CreateS3StorageRequest] createS3StorageRequest (required):
  ///   S3 storage details
  Future<CreateS3Storage201Response?> createS3Storage(CreateS3StorageRequest createS3StorageRequest,) async {
    final response = await createS3StorageWithHttpInfo(createS3StorageRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateS3Storage201Response',) as CreateS3Storage201Response;
    
    }
    return null;
  }

  /// Delete S3 Storage
  ///
  /// Delete S3 storage by UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the S3 storage.
  Future<Response> deleteS3StorageByUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/s3-storages/{uuid}'
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

  /// Delete S3 Storage
  ///
  /// Delete S3 storage by UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the S3 storage.
  Future<DeleteS3StorageByUuid200Response?> deleteS3StorageByUuid(String uuid,) async {
    final response = await deleteS3StorageByUuidWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeleteS3StorageByUuid200Response',) as DeleteS3StorageByUuid200Response;
    
    }
    return null;
  }

  /// Get S3 Storage
  ///
  /// Get S3 storage by UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   S3 Storage UUID
  Future<Response> getS3StorageByUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/s3-storages/{uuid}'
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

  /// Get S3 Storage
  ///
  /// Get S3 storage by UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   S3 Storage UUID
  Future<ListS3Storages200ResponseInner?> getS3StorageByUuid(String uuid,) async {
    final response = await getS3StorageByUuidWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListS3Storages200ResponseInner',) as ListS3Storages200ResponseInner;
    
    }
    return null;
  }

  /// List S3 Storages
  ///
  /// List all S3 storages for the authenticated team.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listS3StoragesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/s3-storages';

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

  /// List S3 Storages
  ///
  /// List all S3 storages for the authenticated team.
  Future<List<ListS3Storages200ResponseInner>?> listS3Storages() async {
    final response = await listS3StoragesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ListS3Storages200ResponseInner>') as List)
        .cast<ListS3Storages200ResponseInner>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update S3 Storage
  ///
  /// Update S3 storage by UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   S3 Storage UUID
  ///
  /// * [UpdateS3StorageByUuidRequest] updateS3StorageByUuidRequest (required):
  ///   S3 storage fields to update.
  Future<Response> updateS3StorageByUuidWithHttpInfo(String uuid, UpdateS3StorageByUuidRequest updateS3StorageByUuidRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/s3-storages/{uuid}'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = updateS3StorageByUuidRequest;

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

  /// Update S3 Storage
  ///
  /// Update S3 storage by UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   S3 Storage UUID
  ///
  /// * [UpdateS3StorageByUuidRequest] updateS3StorageByUuidRequest (required):
  ///   S3 storage fields to update.
  Future<CreatePublicApplication201Response?> updateS3StorageByUuid(String uuid, UpdateS3StorageByUuidRequest updateS3StorageByUuidRequest,) async {
    final response = await updateS3StorageByUuidWithHttpInfo(uuid, updateS3StorageByUuidRequest,);
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

  /// Validate S3 Storage
  ///
  /// Validate an S3 storage connection using ListObjectsV2.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   S3 Storage UUID
  Future<Response> validateS3StorageByUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/s3-storages/{uuid}/validate'
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

  /// Validate S3 Storage
  ///
  /// Validate an S3 storage connection using ListObjectsV2.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   S3 Storage UUID
  Future<ValidateS3StorageByUuid200Response?> validateS3StorageByUuid(String uuid,) async {
    final response = await validateS3StorageByUuidWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ValidateS3StorageByUuid200Response',) as ValidateS3StorageByUuid200Response;
    
    }
    return null;
  }
}
