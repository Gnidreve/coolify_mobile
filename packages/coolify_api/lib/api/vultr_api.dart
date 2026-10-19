//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class VultrApi {
  VultrApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Vultr Server
  ///
  /// Create a Vultr instance and link it as a Coolify server. A cloud-init script or extra SSH key IDs need a token with the deploy permission.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> createVultrServerWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/servers/vultr';

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

  /// Create Vultr Server
  ///
  /// Create a Vultr instance and link it as a Coolify server. A cloud-init script or extra SSH key IDs need a token with the deploy permission.
  Future<void> createVultrServer() async {
    final response = await createVultrServerWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Vultr Operating Systems
  ///
  /// Get all available Vultr operating systems.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getVultrOperatingSystemsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/vultr/os';

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

  /// Get Vultr Operating Systems
  ///
  /// Get all available Vultr operating systems.
  Future<void> getVultrOperatingSystems() async {
    final response = await getVultrOperatingSystemsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Vultr Plans
  ///
  /// Get all available Vultr plans.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getVultrPlansWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/vultr/plans';

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

  /// Get Vultr Plans
  ///
  /// Get all available Vultr plans.
  Future<void> getVultrPlans() async {
    final response = await getVultrPlansWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Vultr Regions
  ///
  /// Get all available Vultr regions.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getVultrRegionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/vultr/regions';

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

  /// Get Vultr Regions
  ///
  /// Get all available Vultr regions.
  Future<void> getVultrRegions() async {
    final response = await getVultrRegionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Vultr SSH Keys
  ///
  /// Get all Vultr SSH keys available to the selected token.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getVultrSshKeysWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/vultr/ssh-keys';

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

  /// Get Vultr SSH Keys
  ///
  /// Get all Vultr SSH keys available to the selected token.
  Future<void> getVultrSshKeys() async {
    final response = await getVultrSshKeysWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
