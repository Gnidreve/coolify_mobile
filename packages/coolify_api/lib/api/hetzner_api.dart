//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class HetznerApi {
  HetznerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Hetzner Server
  ///
  /// Create a new server on Hetzner and register it in Coolify. A cloud-init script or extra SSH key IDs need a token with the deploy permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateHetznerServerRequest] createHetznerServerRequest (required):
  ///   Hetzner server creation parameters
  Future<Response> createHetznerServerWithHttpInfo(CreateHetznerServerRequest createHetznerServerRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/servers/hetzner';

    // ignore: prefer_final_locals
    Object? postBody = createHetznerServerRequest;

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

  /// Create Hetzner Server
  ///
  /// Create a new server on Hetzner and register it in Coolify. A cloud-init script or extra SSH key IDs need a token with the deploy permission.
  ///
  /// Parameters:
  ///
  /// * [CreateHetznerServerRequest] createHetznerServerRequest (required):
  ///   Hetzner server creation parameters
  Future<CreateHetznerServer201Response?> createHetznerServer(CreateHetznerServerRequest createHetznerServerRequest,) async {
    final response = await createHetznerServerWithHttpInfo(createHetznerServerRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateHetznerServer201Response',) as CreateHetznerServer201Response;
    
    }
    return null;
  }

  /// Get Hetzner Firewalls
  ///
  /// Get all existing Hetzner firewalls for the current project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] cloudProviderTokenUuid:
  ///   Cloud provider token UUID. Required if cloud_provider_token_id is not provided.
  ///
  /// * [String] cloudProviderTokenId:
  ///   Deprecated: Use cloud_provider_token_uuid instead. Cloud provider token UUID.
  Future<Response> getHetznerFirewallsWithHttpInfo({ String? cloudProviderTokenUuid, String? cloudProviderTokenId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/hetzner/firewalls';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (cloudProviderTokenUuid != null) {
      queryParams.addAll(_queryParams('', 'cloud_provider_token_uuid', cloudProviderTokenUuid));
    }
    if (cloudProviderTokenId != null) {
      queryParams.addAll(_queryParams('', 'cloud_provider_token_id', cloudProviderTokenId));
    }

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

  /// Get Hetzner Firewalls
  ///
  /// Get all existing Hetzner firewalls for the current project.
  ///
  /// Parameters:
  ///
  /// * [String] cloudProviderTokenUuid:
  ///   Cloud provider token UUID. Required if cloud_provider_token_id is not provided.
  ///
  /// * [String] cloudProviderTokenId:
  ///   Deprecated: Use cloud_provider_token_uuid instead. Cloud provider token UUID.
  Future<List<GetHetznerFirewalls200ResponseInner>?> getHetznerFirewalls({ String? cloudProviderTokenUuid, String? cloudProviderTokenId, }) async {
    final response = await getHetznerFirewallsWithHttpInfo( cloudProviderTokenUuid: cloudProviderTokenUuid, cloudProviderTokenId: cloudProviderTokenId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<GetHetznerFirewalls200ResponseInner>') as List)
        .cast<GetHetznerFirewalls200ResponseInner>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Hetzner Images
  ///
  /// Get all available Hetzner system images (operating systems).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] cloudProviderTokenUuid:
  ///   Cloud provider token UUID. Required if cloud_provider_token_id is not provided.
  ///
  /// * [String] cloudProviderTokenId:
  ///   Deprecated: Use cloud_provider_token_uuid instead. Cloud provider token UUID.
  Future<Response> getHetznerImagesWithHttpInfo({ String? cloudProviderTokenUuid, String? cloudProviderTokenId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/hetzner/images';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (cloudProviderTokenUuid != null) {
      queryParams.addAll(_queryParams('', 'cloud_provider_token_uuid', cloudProviderTokenUuid));
    }
    if (cloudProviderTokenId != null) {
      queryParams.addAll(_queryParams('', 'cloud_provider_token_id', cloudProviderTokenId));
    }

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

  /// Get Hetzner Images
  ///
  /// Get all available Hetzner system images (operating systems).
  ///
  /// Parameters:
  ///
  /// * [String] cloudProviderTokenUuid:
  ///   Cloud provider token UUID. Required if cloud_provider_token_id is not provided.
  ///
  /// * [String] cloudProviderTokenId:
  ///   Deprecated: Use cloud_provider_token_uuid instead. Cloud provider token UUID.
  Future<List<GetHetznerImages200ResponseInner>?> getHetznerImages({ String? cloudProviderTokenUuid, String? cloudProviderTokenId, }) async {
    final response = await getHetznerImagesWithHttpInfo( cloudProviderTokenUuid: cloudProviderTokenUuid, cloudProviderTokenId: cloudProviderTokenId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<GetHetznerImages200ResponseInner>') as List)
        .cast<GetHetznerImages200ResponseInner>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Hetzner Locations
  ///
  /// Get all available Hetzner datacenter locations.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] cloudProviderTokenUuid:
  ///   Cloud provider token UUID. Required if cloud_provider_token_id is not provided.
  ///
  /// * [String] cloudProviderTokenId:
  ///   Deprecated: Use cloud_provider_token_uuid instead. Cloud provider token UUID.
  Future<Response> getHetznerLocationsWithHttpInfo({ String? cloudProviderTokenUuid, String? cloudProviderTokenId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/hetzner/locations';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (cloudProviderTokenUuid != null) {
      queryParams.addAll(_queryParams('', 'cloud_provider_token_uuid', cloudProviderTokenUuid));
    }
    if (cloudProviderTokenId != null) {
      queryParams.addAll(_queryParams('', 'cloud_provider_token_id', cloudProviderTokenId));
    }

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

  /// Get Hetzner Locations
  ///
  /// Get all available Hetzner datacenter locations.
  ///
  /// Parameters:
  ///
  /// * [String] cloudProviderTokenUuid:
  ///   Cloud provider token UUID. Required if cloud_provider_token_id is not provided.
  ///
  /// * [String] cloudProviderTokenId:
  ///   Deprecated: Use cloud_provider_token_uuid instead. Cloud provider token UUID.
  Future<List<GetHetznerLocations200ResponseInner>?> getHetznerLocations({ String? cloudProviderTokenUuid, String? cloudProviderTokenId, }) async {
    final response = await getHetznerLocationsWithHttpInfo( cloudProviderTokenUuid: cloudProviderTokenUuid, cloudProviderTokenId: cloudProviderTokenId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<GetHetznerLocations200ResponseInner>') as List)
        .cast<GetHetznerLocations200ResponseInner>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Hetzner Networks
  ///
  /// Get all existing Hetzner private networks for the current project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] cloudProviderTokenUuid:
  ///   Cloud provider token UUID. Required if cloud_provider_token_id is not provided.
  ///
  /// * [String] cloudProviderTokenId:
  ///   Deprecated: Use cloud_provider_token_uuid instead. Cloud provider token UUID.
  Future<Response> getHetznerNetworksWithHttpInfo({ String? cloudProviderTokenUuid, String? cloudProviderTokenId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/hetzner/networks';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (cloudProviderTokenUuid != null) {
      queryParams.addAll(_queryParams('', 'cloud_provider_token_uuid', cloudProviderTokenUuid));
    }
    if (cloudProviderTokenId != null) {
      queryParams.addAll(_queryParams('', 'cloud_provider_token_id', cloudProviderTokenId));
    }

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

  /// Get Hetzner Networks
  ///
  /// Get all existing Hetzner private networks for the current project.
  ///
  /// Parameters:
  ///
  /// * [String] cloudProviderTokenUuid:
  ///   Cloud provider token UUID. Required if cloud_provider_token_id is not provided.
  ///
  /// * [String] cloudProviderTokenId:
  ///   Deprecated: Use cloud_provider_token_uuid instead. Cloud provider token UUID.
  Future<List<GetHetznerNetworks200ResponseInner>?> getHetznerNetworks({ String? cloudProviderTokenUuid, String? cloudProviderTokenId, }) async {
    final response = await getHetznerNetworksWithHttpInfo( cloudProviderTokenUuid: cloudProviderTokenUuid, cloudProviderTokenId: cloudProviderTokenId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<GetHetznerNetworks200ResponseInner>') as List)
        .cast<GetHetznerNetworks200ResponseInner>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Hetzner Server Types
  ///
  /// Get all available Hetzner server types (instance sizes).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] cloudProviderTokenUuid:
  ///   Cloud provider token UUID. Required if cloud_provider_token_id is not provided.
  ///
  /// * [String] cloudProviderTokenId:
  ///   Deprecated: Use cloud_provider_token_uuid instead. Cloud provider token UUID.
  Future<Response> getHetznerServerTypesWithHttpInfo({ String? cloudProviderTokenUuid, String? cloudProviderTokenId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/hetzner/server-types';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (cloudProviderTokenUuid != null) {
      queryParams.addAll(_queryParams('', 'cloud_provider_token_uuid', cloudProviderTokenUuid));
    }
    if (cloudProviderTokenId != null) {
      queryParams.addAll(_queryParams('', 'cloud_provider_token_id', cloudProviderTokenId));
    }

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

  /// Get Hetzner Server Types
  ///
  /// Get all available Hetzner server types (instance sizes).
  ///
  /// Parameters:
  ///
  /// * [String] cloudProviderTokenUuid:
  ///   Cloud provider token UUID. Required if cloud_provider_token_id is not provided.
  ///
  /// * [String] cloudProviderTokenId:
  ///   Deprecated: Use cloud_provider_token_uuid instead. Cloud provider token UUID.
  Future<List<GetHetznerServerTypes200ResponseInner>?> getHetznerServerTypes({ String? cloudProviderTokenUuid, String? cloudProviderTokenId, }) async {
    final response = await getHetznerServerTypesWithHttpInfo( cloudProviderTokenUuid: cloudProviderTokenUuid, cloudProviderTokenId: cloudProviderTokenId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<GetHetznerServerTypes200ResponseInner>') as List)
        .cast<GetHetznerServerTypes200ResponseInner>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Hetzner SSH Keys
  ///
  /// Get all SSH keys stored in the Hetzner account.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] cloudProviderTokenUuid:
  ///   Cloud provider token UUID. Required if cloud_provider_token_id is not provided.
  ///
  /// * [String] cloudProviderTokenId:
  ///   Deprecated: Use cloud_provider_token_uuid instead. Cloud provider token UUID.
  Future<Response> getHetznerSshKeysWithHttpInfo({ String? cloudProviderTokenUuid, String? cloudProviderTokenId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/hetzner/ssh-keys';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (cloudProviderTokenUuid != null) {
      queryParams.addAll(_queryParams('', 'cloud_provider_token_uuid', cloudProviderTokenUuid));
    }
    if (cloudProviderTokenId != null) {
      queryParams.addAll(_queryParams('', 'cloud_provider_token_id', cloudProviderTokenId));
    }

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

  /// Get Hetzner SSH Keys
  ///
  /// Get all SSH keys stored in the Hetzner account.
  ///
  /// Parameters:
  ///
  /// * [String] cloudProviderTokenUuid:
  ///   Cloud provider token UUID. Required if cloud_provider_token_id is not provided.
  ///
  /// * [String] cloudProviderTokenId:
  ///   Deprecated: Use cloud_provider_token_uuid instead. Cloud provider token UUID.
  Future<List<GetHetznerSshKeys200ResponseInner>?> getHetznerSshKeys({ String? cloudProviderTokenUuid, String? cloudProviderTokenId, }) async {
    final response = await getHetznerSshKeysWithHttpInfo( cloudProviderTokenUuid: cloudProviderTokenUuid, cloudProviderTokenId: cloudProviderTokenId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<GetHetznerSshKeys200ResponseInner>') as List)
        .cast<GetHetznerSshKeys200ResponseInner>()
        .toList(growable: false);

    }
    return null;
  }
}
