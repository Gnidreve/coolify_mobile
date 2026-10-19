//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ServersApi {
  ServersApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Check a registry login on a server
  ///
  /// Check that the saved login of the server for a registry still works. Runs docker login with the saved credentials on the server.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  ///
  /// * [String] registry (required):
  ///   Registry host, optionally with a port, for example registry.example.com:5000.
  Future<Response> checkServerRegistryLoginWithHttpInfo(String uuid, String registry,) async {
    // ignore: prefer_const_declarations
    final path = r'/servers/{uuid}/registries/{registry}/check'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{registry}', registry);

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

  /// Check a registry login on a server
  ///
  /// Check that the saved login of the server for a registry still works. Runs docker login with the saved credentials on the server.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  ///
  /// * [String] registry (required):
  ///   Registry host, optionally with a port, for example registry.example.com:5000.
  Future<CheckServerRegistryLogin200Response?> checkServerRegistryLogin(String uuid, String registry,) async {
    final response = await checkServerRegistryLoginWithHttpInfo(uuid, registry,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CheckServerRegistryLogin200Response',) as CheckServerRegistryLogin200Response;
    
    }
    return null;
  }

  /// Create
  ///
  /// Create Server.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateServerRequest] createServerRequest (required):
  ///   Server created.
  Future<Response> createServerWithHttpInfo(CreateServerRequest createServerRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/servers';

    // ignore: prefer_final_locals
    Object? postBody = createServerRequest;

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
  /// Create Server.
  ///
  /// Parameters:
  ///
  /// * [CreateServerRequest] createServerRequest (required):
  ///   Server created.
  Future<CreateServer201Response?> createServer(CreateServerRequest createServerRequest,) async {
    final response = await createServerWithHttpInfo(createServerRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateServer201Response',) as CreateServer201Response;
    
    }
    return null;
  }

  /// Delete
  ///
  /// Delete server by UUID. With force or delete_from_provider, needs a token with the write and deploy permissions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the server.
  ///
  /// * [bool] force:
  ///   Also delete all resources on the server. Needs the deploy permission.
  ///
  /// * [bool] deleteFromProvider:
  ///   Also delete the server from its cloud provider (Hetzner, Vultr or DigitalOcean). This cannot be undone. Needs the deploy permission.
  Future<Response> deleteServerByUuidWithHttpInfo(String uuid, { bool? force, bool? deleteFromProvider, }) async {
    // ignore: prefer_const_declarations
    final path = r'/servers/{uuid}'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (force != null) {
      queryParams.addAll(_queryParams('', 'force', force));
    }
    if (deleteFromProvider != null) {
      queryParams.addAll(_queryParams('', 'delete_from_provider', deleteFromProvider));
    }

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
  /// Delete server by UUID. With force or delete_from_provider, needs a token with the write and deploy permissions.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   UUID of the server.
  ///
  /// * [bool] force:
  ///   Also delete all resources on the server. Needs the deploy permission.
  ///
  /// * [bool] deleteFromProvider:
  ///   Also delete the server from its cloud provider (Hetzner, Vultr or DigitalOcean). This cannot be undone. Needs the deploy permission.
  Future<DeleteServerByUuid200Response?> deleteServerByUuid(String uuid, { bool? force, bool? deleteFromProvider, }) async {
    final response = await deleteServerByUuidWithHttpInfo(uuid,  force: force, deleteFromProvider: deleteFromProvider, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeleteServerByUuid200Response',) as DeleteServerByUuid200Response;
    
    }
    return null;
  }

  /// Disable Cloudflare Tunnel
  ///
  /// Mark Cloudflare Tunnel as disabled and restore ip_previous when available. Does not remove the remote cloudflared container.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  Future<Response> disableServerCloudflareTunnelWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/servers/{uuid}/cloudflare-tunnel/disable'
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

  /// Disable Cloudflare Tunnel
  ///
  /// Mark Cloudflare Tunnel as disabled and restore ip_previous when available. Does not remove the remote cloudflared container.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  Future<void> disableServerCloudflareTunnel(String uuid,) async {
    final response = await disableServerCloudflareTunnelWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Enable Cloudflare Tunnel (manual)
  ///
  /// Manually mark Cloudflare Tunnel as enabled for a server (matches UI manual enable). Does not deploy cloudflared remotely.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  Future<Response> enableServerCloudflareTunnelWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/servers/{uuid}/cloudflare-tunnel/enable'
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

  /// Enable Cloudflare Tunnel (manual)
  ///
  /// Manually mark Cloudflare Tunnel as enabled for a server (matches UI manual enable). Does not deploy cloudflared remotely.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  Future<void> enableServerCloudflareTunnel(String uuid,) async {
    final response = await enableServerCloudflareTunnelWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Domains
  ///
  /// Get domains by server.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server's UUID
  Future<Response> getDomainsByServerUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/servers/{uuid}/domains'
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

  /// Domains
  ///
  /// Get domains by server.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server's UUID
  Future<List<GetDomainsByServerUuid200ResponseInner>?> getDomainsByServerUuid(String uuid,) async {
    final response = await getDomainsByServerUuidWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<GetDomainsByServerUuid200ResponseInner>') as List)
        .cast<GetDomainsByServerUuid200ResponseInner>()
        .toList(growable: false);

    }
    return null;
  }

  /// Resources
  ///
  /// Get resources by server.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server's UUID
  Future<Response> getResourcesByServerUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/servers/{uuid}/resources'
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

  /// Resources
  ///
  /// Get resources by server.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server's UUID
  Future<List<GetResourcesByServerUuid200ResponseInner>?> getResourcesByServerUuid(String uuid,) async {
    final response = await getResourcesByServerUuidWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<GetResourcesByServerUuid200ResponseInner>') as List)
        .cast<GetResourcesByServerUuid200ResponseInner>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get
  ///
  /// Get server by UUID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server's UUID
  Future<Response> getServerByUuidWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/servers/{uuid}'
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
  /// Get server by UUID.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server's UUID
  Future<Server?> getServerByUuid(String uuid,) async {
    final response = await getServerByUuidWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Server',) as Server;
    
    }
    return null;
  }

  /// Get Cloudflare Tunnel settings
  ///
  /// Get Cloudflare Tunnel settings for a server owned by the authenticated team.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  Future<Response> getServerCloudflareTunnelWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/servers/{uuid}/cloudflare-tunnel'
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

  /// Get Cloudflare Tunnel settings
  ///
  /// Get Cloudflare Tunnel settings for a server owned by the authenticated team.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  Future<GetServerCloudflareTunnel200Response?> getServerCloudflareTunnel(String uuid,) async {
    final response = await getServerCloudflareTunnelWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetServerCloudflareTunnel200Response',) as GetServerCloudflareTunnel200Response;
    
    }
    return null;
  }

  /// Get Docker cleanup settings
  ///
  /// Get Docker cleanup settings for a server owned by the authenticated team.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  Future<Response> getServerDockerCleanupWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/servers/{uuid}/docker-cleanup'
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

  /// Get Docker cleanup settings
  ///
  /// Get Docker cleanup settings for a server owned by the authenticated team.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  Future<GetServerDockerCleanup200Response?> getServerDockerCleanup(String uuid,) async {
    final response = await getServerDockerCleanupWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetServerDockerCleanup200Response',) as GetServerDockerCleanup200Response;
    
    }
    return null;
  }

  /// Get log drain settings
  ///
  /// Get log drain settings for a server owned by the authenticated team. Sensitive fields require the read:sensitive or root token ability.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  Future<Response> getServerLogDrainsWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/servers/{uuid}/log-drains'
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

  /// Get log drain settings
  ///
  /// Get log drain settings for a server owned by the authenticated team. Sensitive fields require the read:sensitive or root token ability.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  Future<GetServerLogDrains200Response?> getServerLogDrains(String uuid,) async {
    final response = await getServerLogDrainsWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetServerLogDrains200Response',) as GetServerLogDrains200Response;
    
    }
    return null;
  }

  /// Get server proxy
  ///
  /// Get proxy settings for a server owned by the authenticated team. The raw proxy configuration is only returned when the token has `read:sensitive` (or `root`) and the user is a team admin/owner, and only when already stored in the database (no remote fetch).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  Future<Response> getServerProxyWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/servers/{uuid}/proxy'
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

  /// Get server proxy
  ///
  /// Get proxy settings for a server owned by the authenticated team. The raw proxy configuration is only returned when the token has `read:sensitive` (or `root`) and the user is a team admin/owner, and only when already stored in the database (no remote fetch).
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  Future<GetServerProxy200Response?> getServerProxy(String uuid,) async {
    final response = await getServerProxyWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetServerProxy200Response',) as GetServerProxy200Response;
    
    }
    return null;
  }

  /// Get Sentinel settings
  ///
  /// Get Sentinel settings for a server owned by the authenticated team. sentinel_token and sentinel_custom_url require the read:sensitive or root token ability.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  Future<Response> getServerSentinelWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/servers/{uuid}/sentinel'
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

  /// Get Sentinel settings
  ///
  /// Get Sentinel settings for a server owned by the authenticated team. sentinel_token and sentinel_custom_url require the read:sensitive or root token ability.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  Future<GetServerSentinel200Response?> getServerSentinel(String uuid,) async {
    final response = await getServerSentinelWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetServerSentinel200Response',) as GetServerSentinel200Response;
    
    }
    return null;
  }

  /// List Docker cleanup executions
  ///
  /// List recent Docker cleanup execution logs for a server owned by the authenticated team.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  Future<Response> listServerDockerCleanupExecutionsWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/servers/{uuid}/docker-cleanup/executions'
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

  /// List Docker cleanup executions
  ///
  /// List recent Docker cleanup execution logs for a server owned by the authenticated team.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  Future<List<ListServerDockerCleanupExecutions200ResponseInner>?> listServerDockerCleanupExecutions(String uuid,) async {
    final response = await listServerDockerCleanupExecutionsWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ListServerDockerCleanupExecutions200ResponseInner>') as List)
        .cast<ListServerDockerCleanupExecutions200ResponseInner>()
        .toList(growable: false);

    }
    return null;
  }

  /// List server registry logins
  ///
  /// List the Docker registries a server is logged in to and the registries its resources pull from or push to. Reads the Docker config of the server over SSH. Credentials are never returned, only registry names and usernames. Requires the `read:sensitive` ability.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  Future<Response> listServerRegistriesWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/servers/{uuid}/registries'
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

  /// List server registry logins
  ///
  /// List the Docker registries a server is logged in to and the registries its resources pull from or push to. Reads the Docker config of the server over SSH. Credentials are never returned, only registry names and usernames. Requires the `read:sensitive` ability.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  Future<ListServerRegistries200Response?> listServerRegistries(String uuid,) async {
    final response = await listServerRegistriesWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListServerRegistries200Response',) as ListServerRegistries200Response;
    
    }
    return null;
  }

  /// List
  ///
  /// List all servers.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listServersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/servers';

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
  /// List all servers.
  Future<List<Server>?> listServers() async {
    final response = await listServersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Server>') as List)
        .cast<Server>()
        .toList(growable: false);

    }
    return null;
  }

  /// Log in to a registry on a server
  ///
  /// Run docker login on the server, writing to the Docker config that deployments use. Logging in again to the same registry replaces the saved login. Needs a token with the write and deploy permissions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  ///
  /// * [LoginServerRegistryRequest] loginServerRegistryRequest (required):
  Future<Response> loginServerRegistryWithHttpInfo(String uuid, LoginServerRegistryRequest loginServerRegistryRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/servers/{uuid}/registries'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = loginServerRegistryRequest;

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

  /// Log in to a registry on a server
  ///
  /// Run docker login on the server, writing to the Docker config that deployments use. Logging in again to the same registry replaces the saved login. Needs a token with the write and deploy permissions.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  ///
  /// * [LoginServerRegistryRequest] loginServerRegistryRequest (required):
  Future<LoginServerRegistry200Response?> loginServerRegistry(String uuid, LoginServerRegistryRequest loginServerRegistryRequest,) async {
    final response = await loginServerRegistryWithHttpInfo(uuid, loginServerRegistryRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LoginServerRegistry200Response',) as LoginServerRegistry200Response;
    
    }
    return null;
  }

  /// Log out from a registry on a server
  ///
  /// Run docker logout on the server for a registry.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  ///
  /// * [String] registry (required):
  ///   Registry host, optionally with a port, for example registry.example.com:5000.
  Future<Response> logoutServerRegistryWithHttpInfo(String uuid, String registry,) async {
    // ignore: prefer_const_declarations
    final path = r'/servers/{uuid}/registries/{registry}'
      .replaceAll('{uuid}', uuid)
      .replaceAll('{registry}', registry);

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

  /// Log out from a registry on a server
  ///
  /// Run docker logout on the server for a registry.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  ///
  /// * [String] registry (required):
  ///   Registry host, optionally with a port, for example registry.example.com:5000.
  Future<LogoutServerRegistry200Response?> logoutServerRegistry(String uuid, String registry,) async {
    final response = await logoutServerRegistryWithHttpInfo(uuid, registry,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LogoutServerRegistry200Response',) as LogoutServerRegistry200Response;
    
    }
    return null;
  }

  /// Restart server proxy
  ///
  /// Queue a proxy restart for a team-owned server. Needs a token with the `deploy` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  Future<Response> restartServerProxyWithHttpInfo(String uuid,) async {
    // ignore: prefer_const_declarations
    final path = r'/servers/{uuid}/proxy/restart'
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

  /// Restart server proxy
  ///
  /// Queue a proxy restart for a team-owned server. Needs a token with the `deploy` permission.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  Future<RestartServerProxy200Response?> restartServerProxy(String uuid,) async {
    final response = await restartServerProxyWithHttpInfo(uuid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RestartServerProxy200Response',) as RestartServerProxy200Response;
    
    }
    return null;
  }

  /// Run Docker cleanup
  ///
  /// Dispatch a manual Docker cleanup job for a server owned by the authenticated team. Needs a token with the write and deploy permissions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  ///
  /// * [RunServerDockerCleanupRequest] runServerDockerCleanupRequest:
  Future<Response> runServerDockerCleanupWithHttpInfo(String uuid, { RunServerDockerCleanupRequest? runServerDockerCleanupRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/servers/{uuid}/docker-cleanup/run'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = runServerDockerCleanupRequest;

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

  /// Run Docker cleanup
  ///
  /// Dispatch a manual Docker cleanup job for a server owned by the authenticated team. Needs a token with the write and deploy permissions.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  ///
  /// * [RunServerDockerCleanupRequest] runServerDockerCleanupRequest:
  Future<RunServerDockerCleanup200Response?> runServerDockerCleanup(String uuid, { RunServerDockerCleanupRequest? runServerDockerCleanupRequest, }) async {
    final response = await runServerDockerCleanupWithHttpInfo(uuid,  runServerDockerCleanupRequest: runServerDockerCleanupRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RunServerDockerCleanup200Response',) as RunServerDockerCleanup200Response;
    
    }
    return null;
  }

  /// Save server proxy configuration
  ///
  /// Save the raw proxy Docker Compose configuration for a team-owned server. Needs a token with the `write` and `deploy` permissions. Multi-line configuration must be base64 encoded (same pattern as other compose payloads).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  ///
  /// * [SaveServerProxyConfigurationRequest] saveServerProxyConfigurationRequest (required):
  Future<Response> saveServerProxyConfigurationWithHttpInfo(String uuid, SaveServerProxyConfigurationRequest saveServerProxyConfigurationRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/servers/{uuid}/proxy/configuration'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = saveServerProxyConfigurationRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Save server proxy configuration
  ///
  /// Save the raw proxy Docker Compose configuration for a team-owned server. Needs a token with the `write` and `deploy` permissions. Multi-line configuration must be base64 encoded (same pattern as other compose payloads).
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  ///
  /// * [SaveServerProxyConfigurationRequest] saveServerProxyConfigurationRequest (required):
  Future<SaveServerProxyConfiguration200Response?> saveServerProxyConfiguration(String uuid, SaveServerProxyConfigurationRequest saveServerProxyConfigurationRequest,) async {
    final response = await saveServerProxyConfigurationWithHttpInfo(uuid, saveServerProxyConfigurationRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SaveServerProxyConfiguration200Response',) as SaveServerProxyConfiguration200Response;
    
    }
    return null;
  }

  /// Update
  ///
  /// Update Server. Changing proxy_type needs a token with the write and deploy permissions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  ///
  /// * [UpdateServerByUuidRequest] updateServerByUuidRequest (required):
  ///   Server updated.
  Future<Response> updateServerByUuidWithHttpInfo(String uuid, UpdateServerByUuidRequest updateServerByUuidRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/servers/{uuid}'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = updateServerByUuidRequest;

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
  /// Update Server. Changing proxy_type needs a token with the write and deploy permissions.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  ///
  /// * [UpdateServerByUuidRequest] updateServerByUuidRequest (required):
  ///   Server updated.
  Future<Server?> updateServerByUuid(String uuid, UpdateServerByUuidRequest updateServerByUuidRequest,) async {
    final response = await updateServerByUuidWithHttpInfo(uuid, updateServerByUuidRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Server',) as Server;
    
    }
    return null;
  }

  /// Update Cloudflare Tunnel settings
  ///
  /// Update stored Cloudflare Tunnel settings for a server. Does not run remote cloudflared configuration; use enable/disable for the manual UI actions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  ///
  /// * [UpdateServerCloudflareTunnelRequest] updateServerCloudflareTunnelRequest (required):
  Future<Response> updateServerCloudflareTunnelWithHttpInfo(String uuid, UpdateServerCloudflareTunnelRequest updateServerCloudflareTunnelRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/servers/{uuid}/cloudflare-tunnel'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = updateServerCloudflareTunnelRequest;

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

  /// Update Cloudflare Tunnel settings
  ///
  /// Update stored Cloudflare Tunnel settings for a server. Does not run remote cloudflared configuration; use enable/disable for the manual UI actions.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  ///
  /// * [UpdateServerCloudflareTunnelRequest] updateServerCloudflareTunnelRequest (required):
  Future<void> updateServerCloudflareTunnel(String uuid, UpdateServerCloudflareTunnelRequest updateServerCloudflareTunnelRequest,) async {
    final response = await updateServerCloudflareTunnelWithHttpInfo(uuid, updateServerCloudflareTunnelRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update Docker cleanup settings
  ///
  /// Update Docker cleanup settings for a server owned by the authenticated team. Turning on `delete_unused_volumes` needs a token with the `deploy` permission.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  ///
  /// * [UpdateServerDockerCleanupRequest] updateServerDockerCleanupRequest (required):
  Future<Response> updateServerDockerCleanupWithHttpInfo(String uuid, UpdateServerDockerCleanupRequest updateServerDockerCleanupRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/servers/{uuid}/docker-cleanup'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = updateServerDockerCleanupRequest;

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

  /// Update Docker cleanup settings
  ///
  /// Update Docker cleanup settings for a server owned by the authenticated team. Turning on `delete_unused_volumes` needs a token with the `deploy` permission.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  ///
  /// * [UpdateServerDockerCleanupRequest] updateServerDockerCleanupRequest (required):
  Future<GetServerDockerCleanup200Response?> updateServerDockerCleanup(String uuid, UpdateServerDockerCleanupRequest updateServerDockerCleanupRequest,) async {
    final response = await updateServerDockerCleanupWithHttpInfo(uuid, updateServerDockerCleanupRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetServerDockerCleanup200Response',) as GetServerDockerCleanup200Response;
    
    }
    return null;
  }

  /// Update log drain settings
  ///
  /// Update New Relic, Axiom, or custom log drain settings for a server owned by the authenticated team. Needs a token with the write and deploy permissions. Custom configs cannot use the lua, wasm, exec, exec_wasi, or file plugins, @INCLUDE, or plugins_file, and the parser file can only contain [PARSER] and [MULTILINE_PARSER] sections.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  ///
  /// * [UpdateServerLogDrainsRequest] updateServerLogDrainsRequest (required):
  Future<Response> updateServerLogDrainsWithHttpInfo(String uuid, UpdateServerLogDrainsRequest updateServerLogDrainsRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/servers/{uuid}/log-drains'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = updateServerLogDrainsRequest;

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

  /// Update log drain settings
  ///
  /// Update New Relic, Axiom, or custom log drain settings for a server owned by the authenticated team. Needs a token with the write and deploy permissions. Custom configs cannot use the lua, wasm, exec, exec_wasi, or file plugins, @INCLUDE, or plugins_file, and the parser file can only contain [PARSER] and [MULTILINE_PARSER] sections.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  ///
  /// * [UpdateServerLogDrainsRequest] updateServerLogDrainsRequest (required):
  Future<void> updateServerLogDrains(String uuid, UpdateServerLogDrainsRequest updateServerLogDrainsRequest,) async {
    final response = await updateServerLogDrainsWithHttpInfo(uuid, updateServerLogDrainsRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update server proxy
  ///
  /// Update proxy redirect settings, exact labels generation, the Traefik certificate resolver, and optionally the proxy type for a team-owned server. Changing proxy_type needs a token with the `write` and `deploy` permissions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  ///
  /// * [UpdateServerProxyRequest] updateServerProxyRequest (required):
  Future<Response> updateServerProxyWithHttpInfo(String uuid, UpdateServerProxyRequest updateServerProxyRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/servers/{uuid}/proxy'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = updateServerProxyRequest;

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

  /// Update server proxy
  ///
  /// Update proxy redirect settings, exact labels generation, the Traefik certificate resolver, and optionally the proxy type for a team-owned server. Changing proxy_type needs a token with the `write` and `deploy` permissions.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  ///
  /// * [UpdateServerProxyRequest] updateServerProxyRequest (required):
  Future<UpdateServerProxy200Response?> updateServerProxy(String uuid, UpdateServerProxyRequest updateServerProxyRequest,) async {
    final response = await updateServerProxyWithHttpInfo(uuid, updateServerProxyRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UpdateServerProxy200Response',) as UpdateServerProxy200Response;
    
    }
    return null;
  }

  /// Update Sentinel settings
  ///
  /// Update Sentinel settings for a server owned by the authenticated team. Changing token/metrics timing fields may restart Sentinel. Needs a token with the write and deploy permissions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  ///
  /// * [UpdateServerSentinelRequest] updateServerSentinelRequest (required):
  Future<Response> updateServerSentinelWithHttpInfo(String uuid, UpdateServerSentinelRequest updateServerSentinelRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/servers/{uuid}/sentinel'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = updateServerSentinelRequest;

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

  /// Update Sentinel settings
  ///
  /// Update Sentinel settings for a server owned by the authenticated team. Changing token/metrics timing fields may restart Sentinel. Needs a token with the write and deploy permissions.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  ///
  /// * [UpdateServerSentinelRequest] updateServerSentinelRequest (required):
  Future<void> updateServerSentinel(String uuid, UpdateServerSentinelRequest updateServerSentinelRequest,) async {
    final response = await updateServerSentinelWithHttpInfo(uuid, updateServerSentinelRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Validate
  ///
  /// Validate server by UUID. With install=true, needs a token with the write and deploy permissions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  ///
  /// * [ValidateServerByUuidRequest] validateServerByUuidRequest:
  Future<Response> validateServerByUuidWithHttpInfo(String uuid, { ValidateServerByUuidRequest? validateServerByUuidRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/servers/{uuid}/validate'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = validateServerByUuidRequest;

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

  /// Validate
  ///
  /// Validate server by UUID. With install=true, needs a token with the write and deploy permissions.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///   Server UUID
  ///
  /// * [ValidateServerByUuidRequest] validateServerByUuidRequest:
  Future<ValidateServerByUuid201Response?> validateServerByUuid(String uuid, { ValidateServerByUuidRequest? validateServerByUuidRequest, }) async {
    final response = await validateServerByUuidWithHttpInfo(uuid,  validateServerByUuidRequest: validateServerByUuidRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ValidateServerByUuid201Response',) as ValidateServerByUuid201Response;
    
    }
    return null;
  }
}
