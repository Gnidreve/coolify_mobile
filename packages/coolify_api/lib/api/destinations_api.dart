//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DestinationsApi {
  DestinationsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create destination
  ///
  /// Create a Docker network destination on a server owned by the authenticated team. The network must be new: Docker's built-in networks (bridge, host, none) and networks that already exist on a standalone server are rejected, because Coolify connects the proxy to the destination network.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] serverUuid (required):
  ///   Server UUID
  ///
  /// * [CreateServerDestinationRequest] createServerDestinationRequest (required):
  Future<Response> createServerDestinationWithHttpInfo(String serverUuid, CreateServerDestinationRequest createServerDestinationRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/servers/{server_uuid}/destinations'
      .replaceAll('{server_uuid}', serverUuid);

    // ignore: prefer_final_locals
    Object? postBody = createServerDestinationRequest;

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

  /// Create destination
  ///
  /// Create a Docker network destination on a server owned by the authenticated team. The network must be new: Docker's built-in networks (bridge, host, none) and networks that already exist on a standalone server are rejected, because Coolify connects the proxy to the destination network.
  ///
  /// Parameters:
  ///
  /// * [String] serverUuid (required):
  ///   Server UUID
  ///
  /// * [CreateServerDestinationRequest] createServerDestinationRequest (required):
  Future<Destination?> createServerDestination(String serverUuid, CreateServerDestinationRequest createServerDestinationRequest,) async {
    final response = await createServerDestinationWithHttpInfo(serverUuid, createServerDestinationRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Destination',) as Destination;
    
    }
    return null;
  }

  /// Delete destination
  ///
  /// Delete an unused Docker network destination.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Destination UUID
  Future<Response> deleteDestinationByUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/destinations/{uuid}'
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

  /// Delete destination
  ///
  /// Delete an unused Docker network destination.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Destination UUID
  Future<DeleteDestinationByUuid200Response?> deleteDestinationByUuid(String uuid,) async {
    final response = await deleteDestinationByUuidWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeleteDestinationByUuid200Response',) as DeleteDestinationByUuid200Response;
    
    }
    return null;
  }

  /// Get destination
  ///
  /// Get a Docker network destination by UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Destination UUID
  Future<Response> getDestinationByUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/destinations/{uuid}'
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

  /// Get destination
  ///
  /// Get a Docker network destination by UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Destination UUID
  Future<Destination?> getDestinationByUuid(String uuid,) async {
    final response = await getDestinationByUuidWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Destination',) as Destination;
    
    }
    return null;
  }

  /// List destinations
  ///
  /// List all Docker network destinations for the authenticated team.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listDestinationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/destinations';

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

  /// List destinations
  ///
  /// List all Docker network destinations for the authenticated team.
  Future<List<Destination>?> listDestinations() async {
    final response = await listDestinationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Destination>') as List)
        .cast<Destination>()
        .toList(growable: false);

    }
    return null;
  }

  /// List destinations by server
  ///
  /// List Docker network destinations attached to a server owned by the authenticated team.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] serverUuid (required):
  ///   Server UUID
  Future<Response> listServerDestinationsWithHttpInfo(String serverUuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/servers/{server_uuid}/destinations'
      .replaceAll('{server_uuid}', serverUuid);

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

  /// List destinations by server
  ///
  /// List Docker network destinations attached to a server owned by the authenticated team.
  ///
  /// Parameters:
  ///
  /// * [String] serverUuid (required):
  ///   Server UUID
  Future<List<Destination>?> listServerDestinations(String serverUuid,) async {
    final response = await listServerDestinationsWithHttpInfo(serverUuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Destination>') as List)
        .cast<Destination>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update destination
  ///
  /// Update a Docker network destination name. Network cannot be changed via the API.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Destination UUID
  ///
  /// * [UpdateDestinationByUuidRequest] updateDestinationByUuidRequest (required):
  Future<Response> updateDestinationByUuidWithHttpInfo(String uuid, UpdateDestinationByUuidRequest updateDestinationByUuidRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/destinations/{uuid}'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = updateDestinationByUuidRequest;

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

  /// Update destination
  ///
  /// Update a Docker network destination name. Network cannot be changed via the API.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Destination UUID
  ///
  /// * [UpdateDestinationByUuidRequest] updateDestinationByUuidRequest (required):
  Future<Destination?> updateDestinationByUuid(String uuid, UpdateDestinationByUuidRequest updateDestinationByUuidRequest,) async {
    final response = await updateDestinationByUuidWithHttpInfo(uuid, updateDestinationByUuidRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Destination',) as Destination;
    
    }
    return null;
  }
}
