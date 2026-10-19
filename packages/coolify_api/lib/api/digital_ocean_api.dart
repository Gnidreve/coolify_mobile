//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DigitalOceanApi {
  DigitalOceanApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a server on DigitalOcean
  ///
  /// Create a DigitalOcean droplet and link it as a Coolify server. A cloud-init script or extra SSH key IDs need a token with the deploy permission.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> createDigitaloceanServerWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/servers/digitalocean';

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

  /// Create a server on DigitalOcean
  ///
  /// Create a DigitalOcean droplet and link it as a Coolify server. A cloud-init script or extra SSH key IDs need a token with the deploy permission.
  Future<void> createDigitaloceanServer() async {
    final response = await createDigitaloceanServerWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get DigitalOcean images
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] cloudProviderTokenUuid:
  ///
  /// * [String] cloudProviderTokenId:
  Future<Response> getDigitaloceanImagesWithHttpInfo({ String? cloudProviderTokenUuid, String? cloudProviderTokenId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/digitalocean/images';

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

  /// Get DigitalOcean images
  ///
  /// Parameters:
  ///
  /// * [String] cloudProviderTokenUuid:
  ///
  /// * [String] cloudProviderTokenId:
  Future<void> getDigitaloceanImages({ String? cloudProviderTokenUuid, String? cloudProviderTokenId, }) async {
    final response = await getDigitaloceanImagesWithHttpInfo( cloudProviderTokenUuid: cloudProviderTokenUuid, cloudProviderTokenId: cloudProviderTokenId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get DigitalOcean regions
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] cloudProviderTokenUuid:
  ///
  /// * [String] cloudProviderTokenId:
  Future<Response> getDigitaloceanRegionsWithHttpInfo({ String? cloudProviderTokenUuid, String? cloudProviderTokenId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/digitalocean/regions';

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

  /// Get DigitalOcean regions
  ///
  /// Parameters:
  ///
  /// * [String] cloudProviderTokenUuid:
  ///
  /// * [String] cloudProviderTokenId:
  Future<void> getDigitaloceanRegions({ String? cloudProviderTokenUuid, String? cloudProviderTokenId, }) async {
    final response = await getDigitaloceanRegionsWithHttpInfo( cloudProviderTokenUuid: cloudProviderTokenUuid, cloudProviderTokenId: cloudProviderTokenId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get DigitalOcean sizes
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] cloudProviderTokenUuid:
  ///
  /// * [String] cloudProviderTokenId:
  Future<Response> getDigitaloceanSizesWithHttpInfo({ String? cloudProviderTokenUuid, String? cloudProviderTokenId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/digitalocean/sizes';

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

  /// Get DigitalOcean sizes
  ///
  /// Parameters:
  ///
  /// * [String] cloudProviderTokenUuid:
  ///
  /// * [String] cloudProviderTokenId:
  Future<void> getDigitaloceanSizes({ String? cloudProviderTokenUuid, String? cloudProviderTokenId, }) async {
    final response = await getDigitaloceanSizesWithHttpInfo( cloudProviderTokenUuid: cloudProviderTokenUuid, cloudProviderTokenId: cloudProviderTokenId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get DigitalOcean SSH keys
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] cloudProviderTokenUuid:
  ///
  /// * [String] cloudProviderTokenId:
  Future<Response> getDigitaloceanSshKeysWithHttpInfo({ String? cloudProviderTokenUuid, String? cloudProviderTokenId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/digitalocean/ssh-keys';

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

  /// Get DigitalOcean SSH keys
  ///
  /// Parameters:
  ///
  /// * [String] cloudProviderTokenUuid:
  ///
  /// * [String] cloudProviderTokenId:
  Future<void> getDigitaloceanSshKeys({ String? cloudProviderTokenUuid, String? cloudProviderTokenId, }) async {
    final response = await getDigitaloceanSshKeysWithHttpInfo( cloudProviderTokenUuid: cloudProviderTokenUuid, cloudProviderTokenId: cloudProviderTokenId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
