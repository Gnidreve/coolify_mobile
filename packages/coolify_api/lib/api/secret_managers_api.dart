//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SecretManagersApi {
  SecretManagersApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Configure Application Secret Manager
  ///
  /// Configure the secret manager source used by an application.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///
  /// * [ConfigureApplicationSecretManagerRequest] configureApplicationSecretManagerRequest (required):
  Future<Response> configureApplicationSecretManagerWithHttpInfo(String uuid, ConfigureApplicationSecretManagerRequest configureApplicationSecretManagerRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/applications/{uuid}/secret-manager'
      .replaceAll('{uuid}', uuid);

    // ignore: prefer_final_locals
    Object? postBody = configureApplicationSecretManagerRequest;

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

  /// Configure Application Secret Manager
  ///
  /// Configure the secret manager source used by an application.
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///
  /// * [ConfigureApplicationSecretManagerRequest] configureApplicationSecretManagerRequest (required):
  Future<void> configureApplicationSecretManager(String uuid, ConfigureApplicationSecretManagerRequest configureApplicationSecretManagerRequest,) async {
    final response = await configureApplicationSecretManagerWithHttpInfo(uuid, configureApplicationSecretManagerRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create Secret Manager Token
  ///
  /// Create and validate a Doppler, Infisical, or Vault integration token.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateSecretManagerIntegrationTokenRequest] createSecretManagerIntegrationTokenRequest (required):
  Future<Response> createSecretManagerIntegrationTokenWithHttpInfo(CreateSecretManagerIntegrationTokenRequest createSecretManagerIntegrationTokenRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/security/integration-tokens';

    // ignore: prefer_final_locals
    Object? postBody = createSecretManagerIntegrationTokenRequest;

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

  /// Create Secret Manager Token
  ///
  /// Create and validate a Doppler, Infisical, or Vault integration token.
  ///
  /// Parameters:
  ///
  /// * [CreateSecretManagerIntegrationTokenRequest] createSecretManagerIntegrationTokenRequest (required):
  Future<void> createSecretManagerIntegrationToken(CreateSecretManagerIntegrationTokenRequest createSecretManagerIntegrationTokenRequest,) async {
    final response = await createSecretManagerIntegrationTokenWithHttpInfo(createSecretManagerIntegrationTokenRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
