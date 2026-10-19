//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateServiceRequest {
  /// Returns a new [CreateServiceRequest] instance.
  CreateServiceRequest({
    this.type,
    this.name,
    this.description,
    required this.projectUuid,
    required this.environmentName,
    required this.environmentUuid,
    required this.serverUuid,
    this.destinationUuid,
    this.instantDeploy = false,
    this.dockerComposeRaw,
    this.connectToDockerNetwork = false,
    this.urls = const [],
    this.forceDomainOverride = false,
    this.isContainerLabelEscapeEnabled = true,
    this.tags = const [],
  });

  /// The one-click service type (e.g. \"actualbudget\", \"calibre-web\", \"gitea-with-mysql\" ...)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  /// Name of the service.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Description of the service.
  String? description;

  /// Project UUID.
  String projectUuid;

  /// Environment name. You need to provide at least one of environment_name or environment_uuid.
  String environmentName;

  /// Environment UUID. You need to provide at least one of environment_name or environment_uuid.
  String environmentUuid;

  /// Server UUID.
  String serverUuid;

  /// Destination UUID. Required if server has multiple destinations.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? destinationUuid;

  /// Start the service immediately after creation.
  bool instantDeploy;

  /// The base64 encoded Docker Compose content.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dockerComposeRaw;

  /// Connect the service to the predefined docker network.
  bool connectToDockerNetwork;

  /// Array of URLs to be applied to containers of a service.
  List<CreateServiceRequestUrlsInner> urls;

  /// Force domain override even if conflicts are detected.
  bool forceDomainOverride;

  /// Escape special characters in labels. By default, $ (and other chars) is escaped. If you want to use env variables inside the labels, turn this off.
  bool isContainerLabelEscapeEnabled;

  /// Tags to assign to the service.
  List<String> tags;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateServiceRequest &&
    other.type == type &&
    other.name == name &&
    other.description == description &&
    other.projectUuid == projectUuid &&
    other.environmentName == environmentName &&
    other.environmentUuid == environmentUuid &&
    other.serverUuid == serverUuid &&
    other.destinationUuid == destinationUuid &&
    other.instantDeploy == instantDeploy &&
    other.dockerComposeRaw == dockerComposeRaw &&
    other.connectToDockerNetwork == connectToDockerNetwork &&
    _deepEquality.equals(other.urls, urls) &&
    other.forceDomainOverride == forceDomainOverride &&
    other.isContainerLabelEscapeEnabled == isContainerLabelEscapeEnabled &&
    _deepEquality.equals(other.tags, tags);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type == null ? 0 : type!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (projectUuid.hashCode) +
    (environmentName.hashCode) +
    (environmentUuid.hashCode) +
    (serverUuid.hashCode) +
    (destinationUuid == null ? 0 : destinationUuid!.hashCode) +
    (instantDeploy.hashCode) +
    (dockerComposeRaw == null ? 0 : dockerComposeRaw!.hashCode) +
    (connectToDockerNetwork.hashCode) +
    (urls.hashCode) +
    (forceDomainOverride.hashCode) +
    (isContainerLabelEscapeEnabled.hashCode) +
    (tags.hashCode);

  @override
  String toString() => 'CreateServiceRequest[type=$type, name=$name, description=$description, projectUuid=$projectUuid, environmentName=$environmentName, environmentUuid=$environmentUuid, serverUuid=$serverUuid, destinationUuid=$destinationUuid, instantDeploy=$instantDeploy, dockerComposeRaw=$dockerComposeRaw, connectToDockerNetwork=$connectToDockerNetwork, urls=$urls, forceDomainOverride=$forceDomainOverride, isContainerLabelEscapeEnabled=$isContainerLabelEscapeEnabled, tags=$tags]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
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
      json[r'project_uuid'] = this.projectUuid;
      json[r'environment_name'] = this.environmentName;
      json[r'environment_uuid'] = this.environmentUuid;
      json[r'server_uuid'] = this.serverUuid;
    if (this.destinationUuid != null) {
      json[r'destination_uuid'] = this.destinationUuid;
    } else {
      json[r'destination_uuid'] = null;
    }
      json[r'instant_deploy'] = this.instantDeploy;
    if (this.dockerComposeRaw != null) {
      json[r'docker_compose_raw'] = this.dockerComposeRaw;
    } else {
      json[r'docker_compose_raw'] = null;
    }
      json[r'connect_to_docker_network'] = this.connectToDockerNetwork;
      json[r'urls'] = this.urls;
      json[r'force_domain_override'] = this.forceDomainOverride;
      json[r'is_container_label_escape_enabled'] = this.isContainerLabelEscapeEnabled;
      json[r'tags'] = this.tags;
    return json;
  }

  /// Returns a new [CreateServiceRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateServiceRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateServiceRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateServiceRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateServiceRequest(
        type: mapValueOfType<String>(json, r'type'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        projectUuid: mapValueOfType<String>(json, r'project_uuid')!,
        environmentName: mapValueOfType<String>(json, r'environment_name')!,
        environmentUuid: mapValueOfType<String>(json, r'environment_uuid')!,
        serverUuid: mapValueOfType<String>(json, r'server_uuid')!,
        destinationUuid: mapValueOfType<String>(json, r'destination_uuid'),
        instantDeploy: mapValueOfType<bool>(json, r'instant_deploy') ?? false,
        dockerComposeRaw: mapValueOfType<String>(json, r'docker_compose_raw'),
        connectToDockerNetwork: mapValueOfType<bool>(json, r'connect_to_docker_network') ?? false,
        urls: CreateServiceRequestUrlsInner.listFromJson(json[r'urls']),
        forceDomainOverride: mapValueOfType<bool>(json, r'force_domain_override') ?? false,
        isContainerLabelEscapeEnabled: mapValueOfType<bool>(json, r'is_container_label_escape_enabled') ?? true,
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<CreateServiceRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateServiceRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateServiceRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateServiceRequest> mapFromJson(dynamic json) {
    final map = <String, CreateServiceRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateServiceRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateServiceRequest-objects as value to a dart map
  static Map<String, List<CreateServiceRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateServiceRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateServiceRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'project_uuid',
    'environment_name',
    'environment_uuid',
    'server_uuid',
  };
}

