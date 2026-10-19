//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateServerByUuidRequest {
  /// Returns a new [UpdateServerByUuidRequest] instance.
  UpdateServerByUuidRequest({
    this.name,
    this.description,
    this.ip,
    this.port,
    this.user,
    this.privateKeyUuid,
    this.serverRole,
    this.isBuildServer,
    this.instantValidate,
    this.proxyType,
    this.concurrentBuilds,
    this.dynamicTimeout,
    this.deploymentQueueLimit,
    this.serverDiskUsageNotificationThreshold,
    this.serverDiskUsageCheckFrequency,
    this.serverDiskUsageNotificationIntervalHours,
    this.connectionTimeout,
  });

  /// The name of the server. Must not contain control characters such as new lines.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// The description of the server.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// The IP of the server.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ip;

  /// The port of the server.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? port;

  /// The user of the server.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? user;

  /// The UUID of the private key.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? privateKeyUuid;

  /// Server role.
  UpdateServerByUuidRequestServerRoleEnum? serverRole;

  /// Deprecated: use server_role instead. true sets server_role to build, false changes a build server to both and leaves other roles unchanged. Must not conflict with server_role.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isBuildServer;

  /// Instant validate.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? instantValidate;

  /// The proxy type. Changing it starts the new proxy on the server and needs the deploy permission.
  UpdateServerByUuidRequestProxyTypeEnum? proxyType;

  /// Number of concurrent builds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? concurrentBuilds;

  /// Deployment timeout in seconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dynamicTimeout;

  /// Maximum number of queued deployments.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? deploymentQueueLimit;

  /// Server disk usage notification threshold (%).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? serverDiskUsageNotificationThreshold;

  /// Cron expression for disk usage check frequency.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serverDiskUsageCheckFrequency;

  /// Minimum hours between high disk usage notifications (1-720). Default: 24.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? serverDiskUsageNotificationIntervalHours;

  /// SSH connection timeout in seconds (1-300). Default: 10.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? connectionTimeout;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateServerByUuidRequest &&
    other.name == name &&
    other.description == description &&
    other.ip == ip &&
    other.port == port &&
    other.user == user &&
    other.privateKeyUuid == privateKeyUuid &&
    other.serverRole == serverRole &&
    other.isBuildServer == isBuildServer &&
    other.instantValidate == instantValidate &&
    other.proxyType == proxyType &&
    other.concurrentBuilds == concurrentBuilds &&
    other.dynamicTimeout == dynamicTimeout &&
    other.deploymentQueueLimit == deploymentQueueLimit &&
    other.serverDiskUsageNotificationThreshold == serverDiskUsageNotificationThreshold &&
    other.serverDiskUsageCheckFrequency == serverDiskUsageCheckFrequency &&
    other.serverDiskUsageNotificationIntervalHours == serverDiskUsageNotificationIntervalHours &&
    other.connectionTimeout == connectionTimeout;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (ip == null ? 0 : ip!.hashCode) +
    (port == null ? 0 : port!.hashCode) +
    (user == null ? 0 : user!.hashCode) +
    (privateKeyUuid == null ? 0 : privateKeyUuid!.hashCode) +
    (serverRole == null ? 0 : serverRole!.hashCode) +
    (isBuildServer == null ? 0 : isBuildServer!.hashCode) +
    (instantValidate == null ? 0 : instantValidate!.hashCode) +
    (proxyType == null ? 0 : proxyType!.hashCode) +
    (concurrentBuilds == null ? 0 : concurrentBuilds!.hashCode) +
    (dynamicTimeout == null ? 0 : dynamicTimeout!.hashCode) +
    (deploymentQueueLimit == null ? 0 : deploymentQueueLimit!.hashCode) +
    (serverDiskUsageNotificationThreshold == null ? 0 : serverDiskUsageNotificationThreshold!.hashCode) +
    (serverDiskUsageCheckFrequency == null ? 0 : serverDiskUsageCheckFrequency!.hashCode) +
    (serverDiskUsageNotificationIntervalHours == null ? 0 : serverDiskUsageNotificationIntervalHours!.hashCode) +
    (connectionTimeout == null ? 0 : connectionTimeout!.hashCode);

  @override
  String toString() => 'UpdateServerByUuidRequest[name=$name, description=$description, ip=$ip, port=$port, user=$user, privateKeyUuid=$privateKeyUuid, serverRole=$serverRole, isBuildServer=$isBuildServer, instantValidate=$instantValidate, proxyType=$proxyType, concurrentBuilds=$concurrentBuilds, dynamicTimeout=$dynamicTimeout, deploymentQueueLimit=$deploymentQueueLimit, serverDiskUsageNotificationThreshold=$serverDiskUsageNotificationThreshold, serverDiskUsageCheckFrequency=$serverDiskUsageCheckFrequency, serverDiskUsageNotificationIntervalHours=$serverDiskUsageNotificationIntervalHours, connectionTimeout=$connectionTimeout]';

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
    if (this.ip != null) {
      json[r'ip'] = this.ip;
    } else {
      json[r'ip'] = null;
    }
    if (this.port != null) {
      json[r'port'] = this.port;
    } else {
      json[r'port'] = null;
    }
    if (this.user != null) {
      json[r'user'] = this.user;
    } else {
      json[r'user'] = null;
    }
    if (this.privateKeyUuid != null) {
      json[r'private_key_uuid'] = this.privateKeyUuid;
    } else {
      json[r'private_key_uuid'] = null;
    }
    if (this.serverRole != null) {
      json[r'server_role'] = this.serverRole;
    } else {
      json[r'server_role'] = null;
    }
    if (this.isBuildServer != null) {
      json[r'is_build_server'] = this.isBuildServer;
    } else {
      json[r'is_build_server'] = null;
    }
    if (this.instantValidate != null) {
      json[r'instant_validate'] = this.instantValidate;
    } else {
      json[r'instant_validate'] = null;
    }
    if (this.proxyType != null) {
      json[r'proxy_type'] = this.proxyType;
    } else {
      json[r'proxy_type'] = null;
    }
    if (this.concurrentBuilds != null) {
      json[r'concurrent_builds'] = this.concurrentBuilds;
    } else {
      json[r'concurrent_builds'] = null;
    }
    if (this.dynamicTimeout != null) {
      json[r'dynamic_timeout'] = this.dynamicTimeout;
    } else {
      json[r'dynamic_timeout'] = null;
    }
    if (this.deploymentQueueLimit != null) {
      json[r'deployment_queue_limit'] = this.deploymentQueueLimit;
    } else {
      json[r'deployment_queue_limit'] = null;
    }
    if (this.serverDiskUsageNotificationThreshold != null) {
      json[r'server_disk_usage_notification_threshold'] = this.serverDiskUsageNotificationThreshold;
    } else {
      json[r'server_disk_usage_notification_threshold'] = null;
    }
    if (this.serverDiskUsageCheckFrequency != null) {
      json[r'server_disk_usage_check_frequency'] = this.serverDiskUsageCheckFrequency;
    } else {
      json[r'server_disk_usage_check_frequency'] = null;
    }
    if (this.serverDiskUsageNotificationIntervalHours != null) {
      json[r'server_disk_usage_notification_interval_hours'] = this.serverDiskUsageNotificationIntervalHours;
    } else {
      json[r'server_disk_usage_notification_interval_hours'] = null;
    }
    if (this.connectionTimeout != null) {
      json[r'connection_timeout'] = this.connectionTimeout;
    } else {
      json[r'connection_timeout'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateServerByUuidRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateServerByUuidRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateServerByUuidRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateServerByUuidRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateServerByUuidRequest(
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        ip: mapValueOfType<String>(json, r'ip'),
        port: mapValueOfType<int>(json, r'port'),
        user: mapValueOfType<String>(json, r'user'),
        privateKeyUuid: mapValueOfType<String>(json, r'private_key_uuid'),
        serverRole: UpdateServerByUuidRequestServerRoleEnum.fromJson(json[r'server_role']),
        isBuildServer: mapValueOfType<bool>(json, r'is_build_server'),
        instantValidate: mapValueOfType<bool>(json, r'instant_validate'),
        proxyType: UpdateServerByUuidRequestProxyTypeEnum.fromJson(json[r'proxy_type']),
        concurrentBuilds: mapValueOfType<int>(json, r'concurrent_builds'),
        dynamicTimeout: mapValueOfType<int>(json, r'dynamic_timeout'),
        deploymentQueueLimit: mapValueOfType<int>(json, r'deployment_queue_limit'),
        serverDiskUsageNotificationThreshold: mapValueOfType<int>(json, r'server_disk_usage_notification_threshold'),
        serverDiskUsageCheckFrequency: mapValueOfType<String>(json, r'server_disk_usage_check_frequency'),
        serverDiskUsageNotificationIntervalHours: mapValueOfType<int>(json, r'server_disk_usage_notification_interval_hours'),
        connectionTimeout: mapValueOfType<int>(json, r'connection_timeout'),
      );
    }
    return null;
  }

  static List<UpdateServerByUuidRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateServerByUuidRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateServerByUuidRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateServerByUuidRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateServerByUuidRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateServerByUuidRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateServerByUuidRequest-objects as value to a dart map
  static Map<String, List<UpdateServerByUuidRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateServerByUuidRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateServerByUuidRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Server role.
class UpdateServerByUuidRequestServerRoleEnum {
  /// Instantiate a new enum with the provided [value].
  const UpdateServerByUuidRequestServerRoleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const deployment = UpdateServerByUuidRequestServerRoleEnum._(r'deployment');
  static const build = UpdateServerByUuidRequestServerRoleEnum._(r'build');
  static const both = UpdateServerByUuidRequestServerRoleEnum._(r'both');

  /// List of all possible values in this [enum][UpdateServerByUuidRequestServerRoleEnum].
  static const values = <UpdateServerByUuidRequestServerRoleEnum>[
    deployment,
    build,
    both,
  ];

  static UpdateServerByUuidRequestServerRoleEnum? fromJson(dynamic value) => UpdateServerByUuidRequestServerRoleEnumTypeTransformer().decode(value);

  static List<UpdateServerByUuidRequestServerRoleEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateServerByUuidRequestServerRoleEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateServerByUuidRequestServerRoleEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UpdateServerByUuidRequestServerRoleEnum] to String,
/// and [decode] dynamic data back to [UpdateServerByUuidRequestServerRoleEnum].
class UpdateServerByUuidRequestServerRoleEnumTypeTransformer {
  factory UpdateServerByUuidRequestServerRoleEnumTypeTransformer() => _instance ??= const UpdateServerByUuidRequestServerRoleEnumTypeTransformer._();

  const UpdateServerByUuidRequestServerRoleEnumTypeTransformer._();

  String encode(UpdateServerByUuidRequestServerRoleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UpdateServerByUuidRequestServerRoleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UpdateServerByUuidRequestServerRoleEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'deployment': return UpdateServerByUuidRequestServerRoleEnum.deployment;
        case r'build': return UpdateServerByUuidRequestServerRoleEnum.build;
        case r'both': return UpdateServerByUuidRequestServerRoleEnum.both;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UpdateServerByUuidRequestServerRoleEnumTypeTransformer] instance.
  static UpdateServerByUuidRequestServerRoleEnumTypeTransformer? _instance;
}


/// The proxy type. Changing it starts the new proxy on the server and needs the deploy permission.
class UpdateServerByUuidRequestProxyTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const UpdateServerByUuidRequestProxyTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const traefik = UpdateServerByUuidRequestProxyTypeEnum._(r'traefik');
  static const caddy = UpdateServerByUuidRequestProxyTypeEnum._(r'caddy');
  static const none = UpdateServerByUuidRequestProxyTypeEnum._(r'none');

  /// List of all possible values in this [enum][UpdateServerByUuidRequestProxyTypeEnum].
  static const values = <UpdateServerByUuidRequestProxyTypeEnum>[
    traefik,
    caddy,
    none,
  ];

  static UpdateServerByUuidRequestProxyTypeEnum? fromJson(dynamic value) => UpdateServerByUuidRequestProxyTypeEnumTypeTransformer().decode(value);

  static List<UpdateServerByUuidRequestProxyTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateServerByUuidRequestProxyTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateServerByUuidRequestProxyTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UpdateServerByUuidRequestProxyTypeEnum] to String,
/// and [decode] dynamic data back to [UpdateServerByUuidRequestProxyTypeEnum].
class UpdateServerByUuidRequestProxyTypeEnumTypeTransformer {
  factory UpdateServerByUuidRequestProxyTypeEnumTypeTransformer() => _instance ??= const UpdateServerByUuidRequestProxyTypeEnumTypeTransformer._();

  const UpdateServerByUuidRequestProxyTypeEnumTypeTransformer._();

  String encode(UpdateServerByUuidRequestProxyTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UpdateServerByUuidRequestProxyTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UpdateServerByUuidRequestProxyTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'traefik': return UpdateServerByUuidRequestProxyTypeEnum.traefik;
        case r'caddy': return UpdateServerByUuidRequestProxyTypeEnum.caddy;
        case r'none': return UpdateServerByUuidRequestProxyTypeEnum.none;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UpdateServerByUuidRequestProxyTypeEnumTypeTransformer] instance.
  static UpdateServerByUuidRequestProxyTypeEnumTypeTransformer? _instance;
}


