//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class TagsApi {
  TagsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create
  ///
  /// Create a tag for the current team.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateTagRequest] createTagRequest (required):
  Future<Response> createTagWithHttpInfo(CreateTagRequest createTagRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/tags';

    // ignore: prefer_final_locals
    Object? postBody = createTagRequest;

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
  /// Create a tag for the current team.
  ///
  /// Parameters:
  ///
  /// * [CreateTagRequest] createTagRequest (required):
  Future<Tag?> createTag(CreateTagRequest createTagRequest,) async {
    final response = await createTagWithHttpInfo(createTagRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Tag',) as Tag;
    
    }
    return null;
  }

  /// Delete
  ///
  /// Delete a tag for the current team. Detaches the tag from all resources via cascade.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Tag UUID
  Future<Response> deleteTagByUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/tags/{uuid}'
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
  /// Delete a tag for the current team. Detaches the tag from all resources via cascade.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Tag UUID
  Future<DeleteTagByUuid200Response?> deleteTagByUuid(String uuid,) async {
    final response = await deleteTagByUuidWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeleteTagByUuid200Response',) as DeleteTagByUuid200Response;
    
    }
    return null;
  }

  /// List
  ///
  /// List all tags for the current team.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listTagsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/tags';

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
  /// List all tags for the current team.
  Future<List<Tag>?> listTags() async {
    final response = await listTagsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Tag>') as List)
        .cast<Tag>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update
  ///
  /// Update a tag name for the current team.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Tag UUID
  ///
  /// * [CreateTagRequest] createTagRequest (required):
  Future<Response> updateTagByUuidWithHttpInfo(String uuid, CreateTagRequest createTagRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/tags/{uuid}'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = createTagRequest;

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
  /// Update a tag name for the current team.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Tag UUID
  ///
  /// * [CreateTagRequest] createTagRequest (required):
  Future<Tag?> updateTagByUuid(String uuid, CreateTagRequest createTagRequest,) async {
    final response = await updateTagByUuidWithHttpInfo(uuid, createTagRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Tag',) as Tag;
    
    }
    return null;
  }
}
