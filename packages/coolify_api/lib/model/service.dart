//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Service {
  /// Returns a new [Service] instance.
  Service({
    this.id,
    this.uuid,
    this.name,
    this.environmentId,
    this.serverId,
    this.description,
    this.dockerComposeRaw,
    this.dockerCompose,
    this.destinationType,
    this.destinationId,
    this.connectToDockerNetwork,
    this.isContainerLabelEscapeEnabled,
    this.isContainerLabelReadonlyEnabled,
    this.configHash,
    this.serviceType,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  /// The unique identifier of the service. Only used for database identification.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// The unique identifier of the service.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uuid;

  /// The name of the service.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// The unique identifier of the environment where the service is attached to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? environmentId;

  /// The unique identifier of the server where the service is running.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? serverId;

  /// The description of the service.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// The raw docker-compose.yml file of the service.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dockerComposeRaw;

  /// The docker-compose.yml file that is parsed and modified by Coolify.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dockerCompose;

  /// Destination type.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? destinationType;

  /// The unique identifier of the destination where the service is running.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? destinationId;

  /// The flag to connect the service to the predefined Docker network.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? connectToDockerNetwork;

  /// The flag to enable the container label escape.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isContainerLabelEscapeEnabled;

  /// The flag to enable the container label readonly.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isContainerLabelReadonlyEnabled;

  /// The hash of the service configuration.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? configHash;

  /// The type of the service.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serviceType;

  /// The date and time when the service was created.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  /// The date and time when the service was last updated.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedAt;

  /// The date and time when the service was deleted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deletedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Service &&
    other.id == id &&
    other.uuid == uuid &&
    other.name == name &&
    other.environmentId == environmentId &&
    other.serverId == serverId &&
    other.description == description &&
    other.dockerComposeRaw == dockerComposeRaw &&
    other.dockerCompose == dockerCompose &&
    other.destinationType == destinationType &&
    other.destinationId == destinationId &&
    other.connectToDockerNetwork == connectToDockerNetwork &&
    other.isContainerLabelEscapeEnabled == isContainerLabelEscapeEnabled &&
    other.isContainerLabelReadonlyEnabled == isContainerLabelReadonlyEnabled &&
    other.configHash == configHash &&
    other.serviceType == serviceType &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.deletedAt == deletedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (uuid == null ? 0 : uuid!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (environmentId == null ? 0 : environmentId!.hashCode) +
    (serverId == null ? 0 : serverId!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (dockerComposeRaw == null ? 0 : dockerComposeRaw!.hashCode) +
    (dockerCompose == null ? 0 : dockerCompose!.hashCode) +
    (destinationType == null ? 0 : destinationType!.hashCode) +
    (destinationId == null ? 0 : destinationId!.hashCode) +
    (connectToDockerNetwork == null ? 0 : connectToDockerNetwork!.hashCode) +
    (isContainerLabelEscapeEnabled == null ? 0 : isContainerLabelEscapeEnabled!.hashCode) +
    (isContainerLabelReadonlyEnabled == null ? 0 : isContainerLabelReadonlyEnabled!.hashCode) +
    (configHash == null ? 0 : configHash!.hashCode) +
    (serviceType == null ? 0 : serviceType!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (deletedAt == null ? 0 : deletedAt!.hashCode);

  @override
  String toString() => 'Service[id=$id, uuid=$uuid, name=$name, environmentId=$environmentId, serverId=$serverId, description=$description, dockerComposeRaw=$dockerComposeRaw, dockerCompose=$dockerCompose, destinationType=$destinationType, destinationId=$destinationId, connectToDockerNetwork=$connectToDockerNetwork, isContainerLabelEscapeEnabled=$isContainerLabelEscapeEnabled, isContainerLabelReadonlyEnabled=$isContainerLabelReadonlyEnabled, configHash=$configHash, serviceType=$serviceType, createdAt=$createdAt, updatedAt=$updatedAt, deletedAt=$deletedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.uuid != null) {
      json[r'uuid'] = this.uuid;
    } else {
      json[r'uuid'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.environmentId != null) {
      json[r'environment_id'] = this.environmentId;
    } else {
      json[r'environment_id'] = null;
    }
    if (this.serverId != null) {
      json[r'server_id'] = this.serverId;
    } else {
      json[r'server_id'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.dockerComposeRaw != null) {
      json[r'docker_compose_raw'] = this.dockerComposeRaw;
    } else {
      json[r'docker_compose_raw'] = null;
    }
    if (this.dockerCompose != null) {
      json[r'docker_compose'] = this.dockerCompose;
    } else {
      json[r'docker_compose'] = null;
    }
    if (this.destinationType != null) {
      json[r'destination_type'] = this.destinationType;
    } else {
      json[r'destination_type'] = null;
    }
    if (this.destinationId != null) {
      json[r'destination_id'] = this.destinationId;
    } else {
      json[r'destination_id'] = null;
    }
    if (this.connectToDockerNetwork != null) {
      json[r'connect_to_docker_network'] = this.connectToDockerNetwork;
    } else {
      json[r'connect_to_docker_network'] = null;
    }
    if (this.isContainerLabelEscapeEnabled != null) {
      json[r'is_container_label_escape_enabled'] = this.isContainerLabelEscapeEnabled;
    } else {
      json[r'is_container_label_escape_enabled'] = null;
    }
    if (this.isContainerLabelReadonlyEnabled != null) {
      json[r'is_container_label_readonly_enabled'] = this.isContainerLabelReadonlyEnabled;
    } else {
      json[r'is_container_label_readonly_enabled'] = null;
    }
    if (this.configHash != null) {
      json[r'config_hash'] = this.configHash;
    } else {
      json[r'config_hash'] = null;
    }
    if (this.serviceType != null) {
      json[r'service_type'] = this.serviceType;
    } else {
      json[r'service_type'] = null;
    }
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt;
    } else {
      json[r'created_at'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updated_at'] = this.updatedAt;
    } else {
      json[r'updated_at'] = null;
    }
    if (this.deletedAt != null) {
      json[r'deleted_at'] = this.deletedAt;
    } else {
      json[r'deleted_at'] = null;
    }
    return json;
  }

  /// Returns a new [Service] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Service? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Service[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Service[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Service(
        id: mapValueOfType<int>(json, r'id'),
        uuid: mapValueOfType<String>(json, r'uuid'),
        name: mapValueOfType<String>(json, r'name'),
        environmentId: mapValueOfType<int>(json, r'environment_id'),
        serverId: mapValueOfType<int>(json, r'server_id'),
        description: mapValueOfType<String>(json, r'description'),
        dockerComposeRaw: mapValueOfType<String>(json, r'docker_compose_raw'),
        dockerCompose: mapValueOfType<String>(json, r'docker_compose'),
        destinationType: mapValueOfType<String>(json, r'destination_type'),
        destinationId: mapValueOfType<int>(json, r'destination_id'),
        connectToDockerNetwork: mapValueOfType<bool>(json, r'connect_to_docker_network'),
        isContainerLabelEscapeEnabled: mapValueOfType<bool>(json, r'is_container_label_escape_enabled'),
        isContainerLabelReadonlyEnabled: mapValueOfType<bool>(json, r'is_container_label_readonly_enabled'),
        configHash: mapValueOfType<String>(json, r'config_hash'),
        serviceType: mapValueOfType<String>(json, r'service_type'),
        createdAt: mapValueOfType<String>(json, r'created_at'),
        updatedAt: mapValueOfType<String>(json, r'updated_at'),
        deletedAt: mapValueOfType<String>(json, r'deleted_at'),
      );
    }
    return null;
  }

  static List<Service> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Service>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Service.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Service> mapFromJson(dynamic json) {
    final map = <String, Service>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Service.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Service-objects as value to a dart map
  static Map<String, List<Service>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Service>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Service.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

