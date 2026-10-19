//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateServiceByUuidRequest {
  /// Returns a new [UpdateServiceByUuidRequest] instance.
  UpdateServiceByUuidRequest({
    this.name,
    this.description,
    this.instantDeploy,
    this.connectToDockerNetwork = false,
    this.dockerComposeRaw,
    this.urls = const [],
    this.forceDomainOverride = false,
    this.isContainerLabelEscapeEnabled = true,
  });

  /// The service name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// The service description.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// The flag to indicate if the service should be deployed instantly.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? instantDeploy;

  /// Connect the service to the predefined docker network.
  bool connectToDockerNetwork;

  /// The base64 encoded Docker Compose content.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dockerComposeRaw;

  /// Array of URLs to be applied to containers of a service.
  List<CreateServiceRequestUrlsInner> urls;

  /// Force domain override even if conflicts are detected.
  bool forceDomainOverride;

  /// Escape special characters in labels. By default, $ (and other chars) is escaped. If you want to use env variables inside the labels, turn this off.
  bool isContainerLabelEscapeEnabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateServiceByUuidRequest &&
    other.name == name &&
    other.description == description &&
    other.instantDeploy == instantDeploy &&
    other.connectToDockerNetwork == connectToDockerNetwork &&
    other.dockerComposeRaw == dockerComposeRaw &&
    _deepEquality.equals(other.urls, urls) &&
    other.forceDomainOverride == forceDomainOverride &&
    other.isContainerLabelEscapeEnabled == isContainerLabelEscapeEnabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (instantDeploy == null ? 0 : instantDeploy!.hashCode) +
    (connectToDockerNetwork.hashCode) +
    (dockerComposeRaw == null ? 0 : dockerComposeRaw!.hashCode) +
    (urls.hashCode) +
    (forceDomainOverride.hashCode) +
    (isContainerLabelEscapeEnabled.hashCode);

  @override
  String toString() => 'UpdateServiceByUuidRequest[name=$name, description=$description, instantDeploy=$instantDeploy, connectToDockerNetwork=$connectToDockerNetwork, dockerComposeRaw=$dockerComposeRaw, urls=$urls, forceDomainOverride=$forceDomainOverride, isContainerLabelEscapeEnabled=$isContainerLabelEscapeEnabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.instantDeploy != null) {
      json[r'instant_deploy'] = this.instantDeploy;
    } else {
      json[r'instant_deploy'] = null;
    }
      json[r'connect_to_docker_network'] = this.connectToDockerNetwork;
    if (this.dockerComposeRaw != null) {
      json[r'docker_compose_raw'] = this.dockerComposeRaw;
    } else {
      json[r'docker_compose_raw'] = null;
    }
      json[r'urls'] = this.urls;
      json[r'force_domain_override'] = this.forceDomainOverride;
      json[r'is_container_label_escape_enabled'] = this.isContainerLabelEscapeEnabled;
    return json;
  }

  /// Returns a new [UpdateServiceByUuidRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateServiceByUuidRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateServiceByUuidRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateServiceByUuidRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateServiceByUuidRequest(
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        instantDeploy: mapValueOfType<bool>(json, r'instant_deploy'),
        connectToDockerNetwork: mapValueOfType<bool>(json, r'connect_to_docker_network') ?? false,
        dockerComposeRaw: mapValueOfType<String>(json, r'docker_compose_raw'),
        urls: CreateServiceRequestUrlsInner.listFromJson(json[r'urls']),
        forceDomainOverride: mapValueOfType<bool>(json, r'force_domain_override') ?? false,
        isContainerLabelEscapeEnabled: mapValueOfType<bool>(json, r'is_container_label_escape_enabled') ?? true,
      );
    }
    return null;
  }

  static List<UpdateServiceByUuidRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateServiceByUuidRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateServiceByUuidRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateServiceByUuidRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateServiceByUuidRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateServiceByUuidRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateServiceByUuidRequest-objects as value to a dart map
  static Map<String, List<UpdateServiceByUuidRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateServiceByUuidRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateServiceByUuidRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

