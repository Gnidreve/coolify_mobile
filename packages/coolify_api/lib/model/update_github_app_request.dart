//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateGithubAppRequest {
  /// Returns a new [UpdateGithubAppRequest] instance.
  UpdateGithubAppRequest({
    this.name,
    this.organization,
    this.apiUrl,
    this.htmlUrl,
    this.customUser,
    this.customPort,
    this.appId,
    this.installationId,
    this.clientId,
    this.clientSecret,
    this.webhookSecret,
    this.privateKeyUuid,
    this.isSystemWide,
  });

  /// GitHub App name
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// GitHub organization
  String? organization;

  /// GitHub API URL
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? apiUrl;

  /// GitHub HTML URL
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? htmlUrl;

  /// Custom user for SSH
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? customUser;

  /// Custom port for SSH
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? customPort;

  /// GitHub App ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? appId;

  /// GitHub Installation ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? installationId;

  /// GitHub Client ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientId;

  /// GitHub Client Secret
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientSecret;

  /// GitHub Webhook Secret
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? webhookSecret;

  /// Private key UUID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? privateKeyUuid;

  /// Is system wide (non-cloud instances only)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isSystemWide;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateGithubAppRequest &&
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
    (name == null ? 0 : name!.hashCode) +
    (organization == null ? 0 : organization!.hashCode) +
    (apiUrl == null ? 0 : apiUrl!.hashCode) +
    (htmlUrl == null ? 0 : htmlUrl!.hashCode) +
    (customUser == null ? 0 : customUser!.hashCode) +
    (customPort == null ? 0 : customPort!.hashCode) +
    (appId == null ? 0 : appId!.hashCode) +
    (installationId == null ? 0 : installationId!.hashCode) +
    (clientId == null ? 0 : clientId!.hashCode) +
    (clientSecret == null ? 0 : clientSecret!.hashCode) +
    (webhookSecret == null ? 0 : webhookSecret!.hashCode) +
    (privateKeyUuid == null ? 0 : privateKeyUuid!.hashCode) +
    (isSystemWide == null ? 0 : isSystemWide!.hashCode);

  @override
  String toString() => 'UpdateGithubAppRequest[name=$name, organization=$organization, apiUrl=$apiUrl, htmlUrl=$htmlUrl, customUser=$customUser, customPort=$customPort, appId=$appId, installationId=$installationId, clientId=$clientId, clientSecret=$clientSecret, webhookSecret=$webhookSecret, privateKeyUuid=$privateKeyUuid, isSystemWide=$isSystemWide]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
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
    if (this.htmlUrl != null) {
      json[r'html_url'] = this.htmlUrl;
    } else {
      json[r'html_url'] = null;
    }
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
    if (this.appId != null) {
      json[r'app_id'] = this.appId;
    } else {
      json[r'app_id'] = null;
    }
    if (this.installationId != null) {
      json[r'installation_id'] = this.installationId;
    } else {
      json[r'installation_id'] = null;
    }
    if (this.clientId != null) {
      json[r'client_id'] = this.clientId;
    } else {
      json[r'client_id'] = null;
    }
    if (this.clientSecret != null) {
      json[r'client_secret'] = this.clientSecret;
    } else {
      json[r'client_secret'] = null;
    }
    if (this.webhookSecret != null) {
      json[r'webhook_secret'] = this.webhookSecret;
    } else {
      json[r'webhook_secret'] = null;
    }
    if (this.privateKeyUuid != null) {
      json[r'private_key_uuid'] = this.privateKeyUuid;
    } else {
      json[r'private_key_uuid'] = null;
    }
    if (this.isSystemWide != null) {
      json[r'is_system_wide'] = this.isSystemWide;
    } else {
      json[r'is_system_wide'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateGithubAppRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateGithubAppRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateGithubAppRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateGithubAppRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateGithubAppRequest(
        name: mapValueOfType<String>(json, r'name'),
        organization: mapValueOfType<String>(json, r'organization'),
        apiUrl: mapValueOfType<String>(json, r'api_url'),
        htmlUrl: mapValueOfType<String>(json, r'html_url'),
        customUser: mapValueOfType<String>(json, r'custom_user'),
        customPort: mapValueOfType<int>(json, r'custom_port'),
        appId: mapValueOfType<int>(json, r'app_id'),
        installationId: mapValueOfType<int>(json, r'installation_id'),
        clientId: mapValueOfType<String>(json, r'client_id'),
        clientSecret: mapValueOfType<String>(json, r'client_secret'),
        webhookSecret: mapValueOfType<String>(json, r'webhook_secret'),
        privateKeyUuid: mapValueOfType<String>(json, r'private_key_uuid'),
        isSystemWide: mapValueOfType<bool>(json, r'is_system_wide'),
      );
    }
    return null;
  }

  static List<UpdateGithubAppRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateGithubAppRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateGithubAppRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateGithubAppRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateGithubAppRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateGithubAppRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateGithubAppRequest-objects as value to a dart map
  static Map<String, List<UpdateGithubAppRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateGithubAppRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateGithubAppRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

