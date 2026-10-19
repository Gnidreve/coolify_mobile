//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiClient {
  ApiClient({this.basePath = 'https://app.coolify.io/api/v1', this.authentication,});

  final String basePath;
  final Authentication? authentication;

  var _client = Client();
  final _defaultHeaderMap = <String, String>{};

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  set client(Client newClient) {
    _client = newClient;
  }

  Map<String, String> get defaultHeaderMap => _defaultHeaderMap;

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object? body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String? contentType,
  ) async {
    await authentication?.applyToParams(queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);
    if (contentType != null) {
      headerParams['Content-Type'] = contentType;
    }

    final urlEncodedQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedQueryParams.isNotEmpty ? '?${urlEncodedQueryParams.join('&')}' : '';
    final uri = Uri.parse('$basePath$path$queryString');

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (
        body is MultipartFile && (contentType == null ||
        !contentType.toLowerCase().startsWith('multipart/form-data'))
      ) {
        final request = StreamedRequest(method, uri);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
          request.sink.add,
          onDone: request.sink.close,
          // ignore: avoid_types_on_closure_parameters
          onError: (Object error, StackTrace trace) => request.sink.close(),
          cancelOnError: true,
        );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = contentType == 'application/x-www-form-urlencoded'
        ? formParams
        : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch(method) {
        case 'POST': return await _client.post(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PUT': return await _client.put(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'DELETE': return await _client.delete(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PATCH': return await _client.patch(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'HEAD': return await _client.head(uri, headers: nullableHeaderParams,);
        case 'GET': return await _client.get(uri, headers: nullableHeaderParams,);
      }
    } on SocketException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Socket operation failed: $method $path',
        error,
        trace,
      );
    } on TlsException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'TLS/SSL communication failed: $method $path',
        error,
        trace,
      );
    } on IOException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'I/O operation failed: $method $path',
        error,
        trace,
      );
    } on ClientException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }

    throw ApiException(
      HttpStatus.badRequest,
      'Invalid HTTP operation: $method $path',
    );
  }

  Future<dynamic> deserializeAsync(String value, String targetType, {bool growable = false,}) async =>
    // ignore: deprecated_member_use_from_same_package
    deserialize(value, targetType, growable: growable);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(String value, String targetType, {bool growable = false,}) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType = targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
      ? value
      : fromJson(json.decode(value), targetType, growable: growable);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object? value) async => serialize(value);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object? value) => value == null ? '' : json.encode(value);

  /// Returns a native instance of an OpenAPI class matching the [specified type][targetType].
  static dynamic fromJson(dynamic value, String targetType, {bool growable = false,}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'DateTime':
          return value is DateTime ? value : DateTime.tryParse(value);
        case 'AddApplicationDestinationRequest':
          return AddApplicationDestinationRequest.fromJson(value);
        case 'Application':
          return Application.fromJson(value);
        case 'ApplicationDeploymentQueue':
          return ApplicationDeploymentQueue.fromJson(value);
        case 'ApplicationPreview':
          return ApplicationPreview.fromJson(value);
        case 'ApplicationPreviewDeployment':
          return ApplicationPreviewDeployment.fromJson(value);
        case 'ApplicationPreviewDockerComposeDomainsInner':
          return ApplicationPreviewDockerComposeDomainsInner.fromJson(value);
        case 'ApplicationSetting':
          return ApplicationSetting.fromJson(value);
        case 'CancelDeploymentByUuid200Response':
          return CancelDeploymentByUuid200Response.fromJson(value);
        case 'CancelDeploymentByUuid400Response':
          return CancelDeploymentByUuid400Response.fromJson(value);
        case 'CancelDeploymentByUuid403Response':
          return CancelDeploymentByUuid403Response.fromJson(value);
        case 'CheckServerRegistryLogin200Response':
          return CheckServerRegistryLogin200Response.fromJson(value);
        case 'CloneApplicationByUuid201Response':
          return CloneApplicationByUuid201Response.fromJson(value);
        case 'CloneApplicationByUuidRequest':
          return CloneApplicationByUuidRequest.fromJson(value);
        case 'CloneDatabaseByUuidRequest':
          return CloneDatabaseByUuidRequest.fromJson(value);
        case 'ConfigureApplicationSecretManagerRequest':
          return ConfigureApplicationSecretManagerRequest.fromJson(value);
        case 'CreateCloudInitScriptRequest':
          return CreateCloudInitScriptRequest.fromJson(value);
        case 'CreateCloudToken201Response':
          return CreateCloudToken201Response.fromJson(value);
        case 'CreateCloudTokenRequest':
          return CreateCloudTokenRequest.fromJson(value);
        case 'CreateDatabaseBackup201Response':
          return CreateDatabaseBackup201Response.fromJson(value);
        case 'CreateDatabaseBackupRequest':
          return CreateDatabaseBackupRequest.fromJson(value);
        case 'CreateDatabaseClickhouseRequest':
          return CreateDatabaseClickhouseRequest.fromJson(value);
        case 'CreateDatabaseDragonflyRequest':
          return CreateDatabaseDragonflyRequest.fromJson(value);
        case 'CreateDatabaseKeydbRequest':
          return CreateDatabaseKeydbRequest.fromJson(value);
        case 'CreateDatabaseMariadbRequest':
          return CreateDatabaseMariadbRequest.fromJson(value);
        case 'CreateDatabaseMongodbRequest':
          return CreateDatabaseMongodbRequest.fromJson(value);
        case 'CreateDatabaseMysqlRequest':
          return CreateDatabaseMysqlRequest.fromJson(value);
        case 'CreateDatabasePostgresqlRequest':
          return CreateDatabasePostgresqlRequest.fromJson(value);
        case 'CreateDatabaseRedisRequest':
          return CreateDatabaseRedisRequest.fromJson(value);
        case 'CreateDatabaseSqliteRequest':
          return CreateDatabaseSqliteRequest.fromJson(value);
        case 'CreateDockerfileApplicationRequest':
          return CreateDockerfileApplicationRequest.fromJson(value);
        case 'CreateDockerimageApplicationRequest':
          return CreateDockerimageApplicationRequest.fromJson(value);
        case 'CreateEnvByApplicationUuid201Response':
          return CreateEnvByApplicationUuid201Response.fromJson(value);
        case 'CreateEnvByApplicationUuidRequest':
          return CreateEnvByApplicationUuidRequest.fromJson(value);
        case 'CreateEnvByDatabaseUuidRequest':
          return CreateEnvByDatabaseUuidRequest.fromJson(value);
        case 'CreateEnvironment201Response':
          return CreateEnvironment201Response.fromJson(value);
        case 'CreateEnvironmentRequest':
          return CreateEnvironmentRequest.fromJson(value);
        case 'CreateGithubApp201Response':
          return CreateGithubApp201Response.fromJson(value);
        case 'CreateGithubAppRequest':
          return CreateGithubAppRequest.fromJson(value);
        case 'CreateGitlabApp201Response':
          return CreateGitlabApp201Response.fromJson(value);
        case 'CreateGitlabAppRequest':
          return CreateGitlabAppRequest.fromJson(value);
        case 'CreateHetznerServer201Response':
          return CreateHetznerServer201Response.fromJson(value);
        case 'CreateHetznerServer429Response':
          return CreateHetznerServer429Response.fromJson(value);
        case 'CreateHetznerServerRequest':
          return CreateHetznerServerRequest.fromJson(value);
        case 'CreatePreviewDeploymentByApplicationUuid400Response':
          return CreatePreviewDeploymentByApplicationUuid400Response.fromJson(value);
        case 'CreatePreviewDeploymentByApplicationUuid422Response':
          return CreatePreviewDeploymentByApplicationUuid422Response.fromJson(value);
        case 'CreatePreviewDeploymentByApplicationUuidRequest':
          return CreatePreviewDeploymentByApplicationUuidRequest.fromJson(value);
        case 'CreatePrivateDeployKeyApplicationRequest':
          return CreatePrivateDeployKeyApplicationRequest.fromJson(value);
        case 'CreatePrivateGithubAppApplicationRequest':
          return CreatePrivateGithubAppApplicationRequest.fromJson(value);
        case 'CreatePrivateKeyRequest':
          return CreatePrivateKeyRequest.fromJson(value);
        case 'CreateProject201Response':
          return CreateProject201Response.fromJson(value);
        case 'CreateProjectRequest':
          return CreateProjectRequest.fromJson(value);
        case 'CreatePublicApplication201Response':
          return CreatePublicApplication201Response.fromJson(value);
        case 'CreatePublicApplication409Response':
          return CreatePublicApplication409Response.fromJson(value);
        case 'CreatePublicApplication409ResponseConflictsInner':
          return CreatePublicApplication409ResponseConflictsInner.fromJson(value);
        case 'CreatePublicApplicationRequest':
          return CreatePublicApplicationRequest.fromJson(value);
        case 'CreatePublicApplicationRequestDockerComposeDomainsInner':
          return CreatePublicApplicationRequestDockerComposeDomainsInner.fromJson(value);
        case 'CreateS3Storage201Response':
          return CreateS3Storage201Response.fromJson(value);
        case 'CreateS3StorageRequest':
          return CreateS3StorageRequest.fromJson(value);
        case 'CreateScheduledTaskByApplicationUuidRequest':
          return CreateScheduledTaskByApplicationUuidRequest.fromJson(value);
        case 'CreateSecretManagerIntegrationTokenRequest':
          return CreateSecretManagerIntegrationTokenRequest.fromJson(value);
        case 'CreateServer201Response':
          return CreateServer201Response.fromJson(value);
        case 'CreateServerDestinationRequest':
          return CreateServerDestinationRequest.fromJson(value);
        case 'CreateServerRequest':
          return CreateServerRequest.fromJson(value);
        case 'CreateService201Response':
          return CreateService201Response.fromJson(value);
        case 'CreateServiceRequest':
          return CreateServiceRequest.fromJson(value);
        case 'CreateServiceRequestUrlsInner':
          return CreateServiceRequestUrlsInner.fromJson(value);
        case 'CreateStorageByApplicationUuidRequest':
          return CreateStorageByApplicationUuidRequest.fromJson(value);
        case 'CreateStorageByServiceUuidRequest':
          return CreateStorageByServiceUuidRequest.fromJson(value);
        case 'CreateTagByApplicationUuidRequest':
          return CreateTagByApplicationUuidRequest.fromJson(value);
        case 'CreateTagRequest':
          return CreateTagRequest.fromJson(value);
        case 'CreateTeamSharedEnvRequest':
          return CreateTeamSharedEnvRequest.fromJson(value);
        case 'DatabaseImportRequest':
          return DatabaseImportRequest.fromJson(value);
        case 'DatabaseImportRequestOneOf':
          return DatabaseImportRequestOneOf.fromJson(value);
        case 'DatabaseImportRequestOneOf1':
          return DatabaseImportRequestOneOf1.fromJson(value);
        case 'DatabaseImportRequestOneOf2':
          return DatabaseImportRequestOneOf2.fromJson(value);
        case 'DatabaseImportStatus':
          return DatabaseImportStatus.fromJson(value);
        case 'DeleteApplicationByUuid200Response':
          return DeleteApplicationByUuid200Response.fromJson(value);
        case 'DeleteBackupConfigurationByUuid200Response':
          return DeleteBackupConfigurationByUuid200Response.fromJson(value);
        case 'DeleteBackupConfigurationByUuid404Response':
          return DeleteBackupConfigurationByUuid404Response.fromJson(value);
        case 'DeleteBackupExecutionByUuid200Response':
          return DeleteBackupExecutionByUuid200Response.fromJson(value);
        case 'DeleteBackupExecutionByUuid404Response':
          return DeleteBackupExecutionByUuid404Response.fromJson(value);
        case 'DeleteCloudTokenByUuid200Response':
          return DeleteCloudTokenByUuid200Response.fromJson(value);
        case 'DeleteDatabaseByUuid200Response':
          return DeleteDatabaseByUuid200Response.fromJson(value);
        case 'DeleteDestinationByUuid200Response':
          return DeleteDestinationByUuid200Response.fromJson(value);
        case 'DeleteEnvByApplicationUuid200Response':
          return DeleteEnvByApplicationUuid200Response.fromJson(value);
        case 'DeleteEnvironment200Response':
          return DeleteEnvironment200Response.fromJson(value);
        case 'DeleteGithubApp200Response':
          return DeleteGithubApp200Response.fromJson(value);
        case 'DeleteGithubApp409Response':
          return DeleteGithubApp409Response.fromJson(value);
        case 'DeleteGitlabApp200Response':
          return DeleteGitlabApp200Response.fromJson(value);
        case 'DeleteGitlabApp409Response':
          return DeleteGitlabApp409Response.fromJson(value);
        case 'DeletePreviewDeploymentByPullRequestId200Response':
          return DeletePreviewDeploymentByPullRequestId200Response.fromJson(value);
        case 'DeletePrivateKeyByUuid200Response':
          return DeletePrivateKeyByUuid200Response.fromJson(value);
        case 'DeletePrivateKeyByUuid422Response':
          return DeletePrivateKeyByUuid422Response.fromJson(value);
        case 'DeleteProjectByUuid200Response':
          return DeleteProjectByUuid200Response.fromJson(value);
        case 'DeleteS3StorageByUuid200Response':
          return DeleteS3StorageByUuid200Response.fromJson(value);
        case 'DeleteScheduledTaskByApplicationUuid200Response':
          return DeleteScheduledTaskByApplicationUuid200Response.fromJson(value);
        case 'DeleteServerByUuid200Response':
          return DeleteServerByUuid200Response.fromJson(value);
        case 'DeleteServiceByUuid200Response':
          return DeleteServiceByUuid200Response.fromJson(value);
        case 'DeleteTagByUuid200Response':
          return DeleteTagByUuid200Response.fromJson(value);
        case 'DeployByTagOrUuid200Response':
          return DeployByTagOrUuid200Response.fromJson(value);
        case 'DeployByTagOrUuid200ResponseDeploymentsInner':
          return DeployByTagOrUuid200ResponseDeploymentsInner.fromJson(value);
        case 'Destination':
          return Destination.fromJson(value);
        case 'DisableApi200Response':
          return DisableApi200Response.fromJson(value);
        case 'DisableApi403Response':
          return DisableApi403Response.fromJson(value);
        case 'DisableMcp200Response':
          return DisableMcp200Response.fromJson(value);
        case 'DisableMcp403Response':
          return DisableMcp403Response.fromJson(value);
        case 'EnableApi200Response':
          return EnableApi200Response.fromJson(value);
        case 'EnableApi403Response':
          return EnableApi403Response.fromJson(value);
        case 'EnableMcp200Response':
          return EnableMcp200Response.fromJson(value);
        case 'EnableMcp403Response':
          return EnableMcp403Response.fromJson(value);
        case 'Environment':
          return Environment.fromJson(value);
        case 'EnvironmentVariable':
          return EnvironmentVariable.fromJson(value);
        case 'GetApplicationLogsByUuid200Response':
          return GetApplicationLogsByUuid200Response.fromJson(value);
        case 'GetCloudTokenByUuid200Response':
          return GetCloudTokenByUuid200Response.fromJson(value);
        case 'GetDomainsByServerUuid200ResponseInner':
          return GetDomainsByServerUuid200ResponseInner.fromJson(value);
        case 'GetHetznerFirewalls200ResponseInner':
          return GetHetznerFirewalls200ResponseInner.fromJson(value);
        case 'GetHetznerImages200ResponseInner':
          return GetHetznerImages200ResponseInner.fromJson(value);
        case 'GetHetznerLocations200ResponseInner':
          return GetHetznerLocations200ResponseInner.fromJson(value);
        case 'GetHetznerNetworks200ResponseInner':
          return GetHetznerNetworks200ResponseInner.fromJson(value);
        case 'GetHetznerServerTypes200ResponseInner':
          return GetHetznerServerTypes200ResponseInner.fromJson(value);
        case 'GetHetznerServerTypes200ResponseInnerPricesInner':
          return GetHetznerServerTypes200ResponseInnerPricesInner.fromJson(value);
        case 'GetHetznerServerTypes200ResponseInnerPricesInnerPriceHourly':
          return GetHetznerServerTypes200ResponseInnerPricesInnerPriceHourly.fromJson(value);
        case 'GetHetznerSshKeys200ResponseInner':
          return GetHetznerSshKeys200ResponseInner.fromJson(value);
        case 'GetResourcesByServerUuid200ResponseInner':
          return GetResourcesByServerUuid200ResponseInner.fromJson(value);
        case 'GetServerCloudflareTunnel200Response':
          return GetServerCloudflareTunnel200Response.fromJson(value);
        case 'GetServerDockerCleanup200Response':
          return GetServerDockerCleanup200Response.fromJson(value);
        case 'GetServerLogDrains200Response':
          return GetServerLogDrains200Response.fromJson(value);
        case 'GetServerProxy200Response':
          return GetServerProxy200Response.fromJson(value);
        case 'GetServerSentinel200Response':
          return GetServerSentinel200Response.fromJson(value);
        case 'ListApplicationRollbackImages200Response':
          return ListApplicationRollbackImages200Response.fromJson(value);
        case 'ListApplicationRollbackImages200ResponseImagesInner':
          return ListApplicationRollbackImages200ResponseImagesInner.fromJson(value);
        case 'ListAuditEvents200Response':
          return ListAuditEvents200Response.fromJson(value);
        case 'ListAuditEvents200ResponseDataInner':
          return ListAuditEvents200ResponseDataInner.fromJson(value);
        case 'ListBackupExecutions200Response':
          return ListBackupExecutions200Response.fromJson(value);
        case 'ListBackupExecutions200ResponseExecutionsInner':
          return ListBackupExecutions200ResponseExecutionsInner.fromJson(value);
        case 'ListCloudTokens200ResponseInner':
          return ListCloudTokens200ResponseInner.fromJson(value);
        case 'ListGithubApps200ResponseInner':
          return ListGithubApps200ResponseInner.fromJson(value);
        case 'ListGitlabApps200ResponseInner':
          return ListGitlabApps200ResponseInner.fromJson(value);
        case 'ListPreviewDeploymentsByApplicationUuid401Response':
          return ListPreviewDeploymentsByApplicationUuid401Response.fromJson(value);
        case 'ListPreviewDeploymentsByApplicationUuid404Response':
          return ListPreviewDeploymentsByApplicationUuid404Response.fromJson(value);
        case 'ListS3Storages200ResponseInner':
          return ListS3Storages200ResponseInner.fromJson(value);
        case 'ListServerDockerCleanupExecutions200ResponseInner':
          return ListServerDockerCleanupExecutions200ResponseInner.fromJson(value);
        case 'ListServerRegistries200Response':
          return ListServerRegistries200Response.fromJson(value);
        case 'ListServerRegistries200ResponseRegistriesInner':
          return ListServerRegistries200ResponseRegistriesInner.fromJson(value);
        case 'ListServerRegistries200ResponseRegistriesInnerUsedByInner':
          return ListServerRegistries200ResponseRegistriesInnerUsedByInner.fromJson(value);
        case 'ListStoragesByApplicationUuid200Response':
          return ListStoragesByApplicationUuid200Response.fromJson(value);
        case 'LoadBranches200Response':
          return LoadBranches200Response.fromJson(value);
        case 'LoadRepositories200Response':
          return LoadRepositories200Response.fromJson(value);
        case 'LoginServerRegistry200Response':
          return LoginServerRegistry200Response.fromJson(value);
        case 'LoginServerRegistryRequest':
          return LoginServerRegistryRequest.fromJson(value);
        case 'LogoutServerRegistry200Response':
          return LogoutServerRegistry200Response.fromJson(value);
        case 'MigrateApplicationByUuidRequest':
          return MigrateApplicationByUuidRequest.fromJson(value);
        case 'MoveApplicationByUuid200Response':
          return MoveApplicationByUuid200Response.fromJson(value);
        case 'MoveApplicationByUuidRequest':
          return MoveApplicationByUuidRequest.fromJson(value);
        case 'MoveDatabaseByUuid200Response':
          return MoveDatabaseByUuid200Response.fromJson(value);
        case 'MoveServiceByUuid200Response':
          return MoveServiceByUuid200Response.fromJson(value);
        case 'PatchServiceApplicationByServiceAndAppUuidRequest':
          return PatchServiceApplicationByServiceAndAppUuidRequest.fromJson(value);
        case 'PatchServiceDatabaseByServiceAndDatabaseUuidRequest':
          return PatchServiceDatabaseByServiceAndDatabaseUuidRequest.fromJson(value);
        case 'PrivateKey':
          return PrivateKey.fromJson(value);
        case 'Project':
          return Project.fromJson(value);
        case 'RestartApplicationByUuid200Response':
          return RestartApplicationByUuid200Response.fromJson(value);
        case 'RestartDatabaseByUuid200Response':
          return RestartDatabaseByUuid200Response.fromJson(value);
        case 'RestartServerProxy200Response':
          return RestartServerProxy200Response.fromJson(value);
        case 'RestartServiceByUuid200Response':
          return RestartServiceByUuid200Response.fromJson(value);
        case 'RollbackApplicationByUuid200Response':
          return RollbackApplicationByUuid200Response.fromJson(value);
        case 'RollbackApplicationByUuidRequest':
          return RollbackApplicationByUuidRequest.fromJson(value);
        case 'RunServerDockerCleanup200Response':
          return RunServerDockerCleanup200Response.fromJson(value);
        case 'RunServerDockerCleanupRequest':
          return RunServerDockerCleanupRequest.fromJson(value);
        case 'SaveServerProxyConfiguration200Response':
          return SaveServerProxyConfiguration200Response.fromJson(value);
        case 'SaveServerProxyConfigurationRequest':
          return SaveServerProxyConfigurationRequest.fromJson(value);
        case 'ScheduledTask':
          return ScheduledTask.fromJson(value);
        case 'ScheduledTaskExecution':
          return ScheduledTaskExecution.fromJson(value);
        case 'Server':
          return Server.fromJson(value);
        case 'ServerSetting':
          return ServerSetting.fromJson(value);
        case 'Service':
          return Service.fromJson(value);
        case 'StartApplicationByUuid200Response':
          return StartApplicationByUuid200Response.fromJson(value);
        case 'StartDatabaseByUuid200Response':
          return StartDatabaseByUuid200Response.fromJson(value);
        case 'StartServiceByUuid200Response':
          return StartServiceByUuid200Response.fromJson(value);
        case 'StopApplicationByUuid200Response':
          return StopApplicationByUuid200Response.fromJson(value);
        case 'StopDatabaseByUuid200Response':
          return StopDatabaseByUuid200Response.fromJson(value);
        case 'StopServiceByUuid200Response':
          return StopServiceByUuid200Response.fromJson(value);
        case 'Tag':
          return Tag.fromJson(value);
        case 'Team':
          return Team.fromJson(value);
        case 'UpdateApplicationByUuidRequest':
          return UpdateApplicationByUuidRequest.fromJson(value);
        case 'UpdateCloudInitScriptByUuidRequest':
          return UpdateCloudInitScriptByUuidRequest.fromJson(value);
        case 'UpdateCloudTokenByUuidRequest':
          return UpdateCloudTokenByUuidRequest.fromJson(value);
        case 'UpdateDatabaseBackupRequest':
          return UpdateDatabaseBackupRequest.fromJson(value);
        case 'UpdateDatabaseByUuidRequest':
          return UpdateDatabaseByUuidRequest.fromJson(value);
        case 'UpdateDestinationByUuidRequest':
          return UpdateDestinationByUuidRequest.fromJson(value);
        case 'UpdateEnvByApplicationUuidRequest':
          return UpdateEnvByApplicationUuidRequest.fromJson(value);
        case 'UpdateEnvByDatabaseUuidRequest':
          return UpdateEnvByDatabaseUuidRequest.fromJson(value);
        case 'UpdateEnvironment200Response':
          return UpdateEnvironment200Response.fromJson(value);
        case 'UpdateEnvironmentRequest':
          return UpdateEnvironmentRequest.fromJson(value);
        case 'UpdateEnvsByApplicationUuidRequest':
          return UpdateEnvsByApplicationUuidRequest.fromJson(value);
        case 'UpdateEnvsByDatabaseUuidRequest':
          return UpdateEnvsByDatabaseUuidRequest.fromJson(value);
        case 'UpdateGithubApp200Response':
          return UpdateGithubApp200Response.fromJson(value);
        case 'UpdateGithubAppRequest':
          return UpdateGithubAppRequest.fromJson(value);
        case 'UpdateGitlabApp200Response':
          return UpdateGitlabApp200Response.fromJson(value);
        case 'UpdateGitlabAppRequest':
          return UpdateGitlabAppRequest.fromJson(value);
        case 'UpdatePreviewDomainsByPullRequestIdRequest':
          return UpdatePreviewDomainsByPullRequestIdRequest.fromJson(value);
        case 'UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInner':
          return UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInner.fromJson(value);
        case 'UpdatePrivateKeyRequest':
          return UpdatePrivateKeyRequest.fromJson(value);
        case 'UpdateProjectByUuid201Response':
          return UpdateProjectByUuid201Response.fromJson(value);
        case 'UpdateS3StorageByUuidRequest':
          return UpdateS3StorageByUuidRequest.fromJson(value);
        case 'UpdateScheduledTaskByApplicationUuidRequest':
          return UpdateScheduledTaskByApplicationUuidRequest.fromJson(value);
        case 'UpdateServerByUuidRequest':
          return UpdateServerByUuidRequest.fromJson(value);
        case 'UpdateServerCloudflareTunnelRequest':
          return UpdateServerCloudflareTunnelRequest.fromJson(value);
        case 'UpdateServerDockerCleanupRequest':
          return UpdateServerDockerCleanupRequest.fromJson(value);
        case 'UpdateServerLogDrainsRequest':
          return UpdateServerLogDrainsRequest.fromJson(value);
        case 'UpdateServerProxy200Response':
          return UpdateServerProxy200Response.fromJson(value);
        case 'UpdateServerProxyRequest':
          return UpdateServerProxyRequest.fromJson(value);
        case 'UpdateServerSentinelRequest':
          return UpdateServerSentinelRequest.fromJson(value);
        case 'UpdateServiceByUuidRequest':
          return UpdateServiceByUuidRequest.fromJson(value);
        case 'UpdateStorageByApplicationUuidRequest':
          return UpdateStorageByApplicationUuidRequest.fromJson(value);
        case 'UpdateTokenTeamRequest':
          return UpdateTokenTeamRequest.fromJson(value);
        case 'User':
          return User.fromJson(value);
        case 'ValidateCloudTokenByUuid200Response':
          return ValidateCloudTokenByUuid200Response.fromJson(value);
        case 'ValidateS3StorageByUuid200Response':
          return ValidateS3StorageByUuid200Response.fromJson(value);
        case 'ValidateServerByUuid201Response':
          return ValidateServerByUuid201Response.fromJson(value);
        case 'ValidateServerByUuidRequest':
          return ValidateServerByUuidRequest.fromJson(value);
        case 'VolumeBackupScheduleRequest':
          return VolumeBackupScheduleRequest.fromJson(value);
        case 'VolumeBackupScheduleResponse':
          return VolumeBackupScheduleResponse.fromJson(value);
        default:
          dynamic match;
          if (value is List && (match = _regList.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toList(growable: growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)?.group(1)) != null) {
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,)),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', error, trace,);
    }
    throw ApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    required this.json,
    required this.targetType,
    this.growable = false,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> decodeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : json.decode(message.json);
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : ApiClient.fromJson(
        json.decode(message.json),
        targetType,
        growable: message.growable,
      );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object? value) async => value == null ? '' : json.encode(value);
