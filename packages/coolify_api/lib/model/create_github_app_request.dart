//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateGithubAppRequest {
  /// Returns a new [CreateGithubAppRequest] instance.
  CreateGithubAppRequest({
    required this.name,
    this.organization,
    this.apiUrl,
    required this.htmlUrl,
    this.customUser,
    this.customPort,
    required this.appId,
    required this.installationId,
    required this.clientId,
    required this.clientSecret,
    this.webhookSecret,
    required this.privateKeyUuid,
    this.isSystemWide,
  });

  /// Name of the GitHub app.
  String name;

  /// Organization to associate the app with.
  String? organization;

  /// API URL for the GitHub app (e.g., https://api.github.com).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? apiUrl;

  /// HTML URL for the GitHub app (e.g., https://github.com).
  String htmlUrl;

  /// Custom user for SSH access (default: git).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? customUser;

  /// Custom port for SSH access (default: 22).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? customPort;

  /// GitHub App ID from GitHub.
  int appId;

  /// GitHub Installation ID.
  int installationId;

  /// GitHub OAuth App Client ID.
  String clientId;

  /// GitHub OAuth App Client Secret.
  String clientSecret;

  /// Webhook secret for GitHub webhooks.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? webhookSecret;

  /// UUID of an existing private key for GitHub App authentication.
  String privateKeyUuid;

  /// Is this app system-wide (cloud only).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isSystemWide;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateGithubAppRequest &&
    other.name == name &&
    other.organization == organization &&
    other.apiUrl == apiUrl &&
    other.htmlUrl == htmlUrl &&
    other.customUser == customUser &&
    other.customPort == customPort &&
    other.appId == appId &&
    other.installationId == installationId &&
    other.clientId == clientId &&
    other.clientSecret == clientSecret &&
    other.webhookSecret == webhookSecret &&
    other.privateKeyUuid == privateKeyUuid &&
    other.isSystemWide == isSystemWide;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (organization == null ? 0 : organization!.hashCode) +
    (apiUrl == null ? 0 : apiUrl!.hashCode) +
    (htmlUrl.hashCode) +
    (customUser == null ? 0 : customUser!.hashCode) +
    (customPort == null ? 0 : customPort!.hashCode) +
    (appId.hashCode) +
    (installationId.hashCode) +
    (clientId.hashCode) +
    (clientSecret.hashCode) +
    (webhookSecret == null ? 0 : webhookSecret!.hashCode) +
    (privateKeyUuid.hashCode) +
    (isSystemWide == null ? 0 : isSystemWide!.hashCode);

  @override
  String toString() => 'CreateGithubAppRequest[name=$name, organization=$organization, apiUrl=$apiUrl, htmlUrl=$htmlUrl, customUser=$customUser, customPort=$customPort, appId=$appId, installationId=$installationId, clientId=$clientId, clientSecret=$clientSecret, webhookSecret=$webhookSecret, privateKeyUuid=$privateKeyUuid, isSystemWide=$isSystemWide]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
    if (this.organization != null) {
      json[r'organization'] = this.organization;
    } else {
      json[r'organization'] = null;
    }
    if (this.apiUrl != null) {
      json[r'api_url'] = this.apiUrl;
    } else {
      json[r'api_url'] = null;
    }
      json[r'html_url'] = this.htmlUrl;
    if (this.customUser != null) {
      json[r'custom_user'] = this.customUser;
    } else {
      json[r'custom_user'] = null;
    }
    if (this.customPort != null) {
      json[r'custom_port'] = this.customPort;
    } else {
      json[r'custom_port'] = null;
    }
      json[r'app_id'] = this.appId;
      json[r'installation_id'] = this.installationId;
      json[r'client_id'] = this.clientId;
      json[r'client_secret'] = this.clientSecret;
    if (this.webhookSecret != null) {
      json[r'webhook_secret'] = this.webhookSecret;
    } else {
      json[r'webhook_secret'] = null;
    }
      json[r'private_key_uuid'] = this.privateKeyUuid;
    if (this.isSystemWide != null) {
      json[r'is_system_wide'] = this.isSystemWide;
    } else {
      json[r'is_system_wide'] = null;
    }
    return json;
  }

  /// Returns a new [CreateGithubAppRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateGithubAppRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateGithubAppRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateGithubAppRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateGithubAppRequest(
        name: mapValueOfType<String>(json, r'name')!,
        organization: mapValueOfType<String>(json, r'organization'),
        apiUrl: mapValueOfType<String>(json, r'api_url'),
        htmlUrl: mapValueOfType<String>(json, r'html_url')!,
        customUser: mapValueOfType<String>(json, r'custom_user'),
        customPort: mapValueOfType<int>(json, r'custom_port'),
        appId: mapValueOfType<int>(json, r'app_id')!,
        installationId: mapValueOfType<int>(json, r'installation_id')!,
        clientId: mapValueOfType<String>(json, r'client_id')!,
        clientSecret: mapValueOfType<String>(json, r'client_secret')!,
        webhookSecret: mapValueOfType<String>(json, r'webhook_secret'),
        privateKeyUuid: mapValueOfType<String>(json, r'private_key_uuid')!,
        isSystemWide: mapValueOfType<bool>(json, r'is_system_wide'),
      );
    }
    return null;
  }

  static List<CreateGithubAppRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateGithubAppRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateGithubAppRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateGithubAppRequest> mapFromJson(dynamic json) {
    final map = <String, CreateGithubAppRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateGithubAppRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateGithubAppRequest-objects as value to a dart map
  static Map<String, List<CreateGithubAppRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateGithubAppRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateGithubAppRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'html_url',
    'app_id',
    'installation_id',
    'client_id',
    'client_secret',
    'private_key_uuid',
  };
}

