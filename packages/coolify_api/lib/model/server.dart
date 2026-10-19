//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Server {
  /// Returns a new [Server] instance.
  Server({
    this.id,
    this.uuid,
    this.name,
    this.description,
    this.ip,
    this.user,
    this.port,
    this.proxy = const {},
    this.proxyType,
    this.highDiskUsageNotificationSent,
    this.unreachableNotificationSent,
    this.unreachableCount,
    this.validationLogs,
    this.logDrainNotificationSent,
    this.swarmCluster,
    this.settings,
  });

  /// The server ID.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// The server UUID.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uuid;

  /// The server name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// The server description.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// The IP address.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ip;

  /// The user.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? user;

  /// The port number.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? port;

  /// The proxy configuration.
  Map<String, Object> proxy;

  /// The proxy type.
  ServerProxyTypeEnum? proxyType;

  /// The flag to indicate if the high disk usage notification has been sent.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? highDiskUsageNotificationSent;

  /// The flag to indicate if the unreachable notification has been sent.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? unreachableNotificationSent;

  /// The unreachable count for your server.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? unreachableCount;

  /// The validation logs.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? validationLogs;

  /// The flag to indicate if the log drain notification has been sent.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? logDrainNotificationSent;

  /// The swarm cluster configuration.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? swarmCluster;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ServerSetting? settings;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Server &&
    other.id == id &&
    other.uuid == uuid &&
    other.name == name &&
    other.description == description &&
    other.ip == ip &&
    other.user == user &&
    other.port == port &&
    _deepEquality.equals(other.proxy, proxy) &&
    other.proxyType == proxyType &&
    other.highDiskUsageNotificationSent == highDiskUsageNotificationSent &&
    other.unreachableNotificationSent == unreachableNotificationSent &&
    other.unreachableCount == unreachableCount &&
    other.validationLogs == validationLogs &&
    other.logDrainNotificationSent == logDrainNotificationSent &&
    other.swarmCluster == swarmCluster &&
    other.settings == settings;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (uuid == null ? 0 : uuid!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (ip == null ? 0 : ip!.hashCode) +
    (user == null ? 0 : user!.hashCode) +
    (port == null ? 0 : port!.hashCode) +
    (proxy.hashCode) +
    (proxyType == null ? 0 : proxyType!.hashCode) +
    (highDiskUsageNotificationSent == null ? 0 : highDiskUsageNotificationSent!.hashCode) +
    (unreachableNotificationSent == null ? 0 : unreachableNotificationSent!.hashCode) +
    (unreachableCount == null ? 0 : unreachableCount!.hashCode) +
    (validationLogs == null ? 0 : validationLogs!.hashCode) +
    (logDrainNotificationSent == null ? 0 : logDrainNotificationSent!.hashCode) +
    (swarmCluster == null ? 0 : swarmCluster!.hashCode) +
    (settings == null ? 0 : settings!.hashCode);

  @override
  String toString() => 'Server[id=$id, uuid=$uuid, name=$name, description=$description, ip=$ip, user=$user, port=$port, proxy=$proxy, proxyType=$proxyType, highDiskUsageNotificationSent=$highDiskUsageNotificationSent, unreachableNotificationSent=$unreachableNotificationSent, unreachableCount=$unreachableCount, validationLogs=$validationLogs, logDrainNotificationSent=$logDrainNotificationSent, swarmCluster=$swarmCluster, settings=$settings]';

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
    if (this.user != null) {
      json[r'user'] = this.user;
    } else {
      json[r'user'] = null;
    }
    if (this.port != null) {
      json[r'port'] = this.port;
    } else {
      json[r'port'] = null;
    }
      json[r'proxy'] = this.proxy;
    if (this.proxyType != null) {
      json[r'proxy_type'] = this.proxyType;
    } else {
      json[r'proxy_type'] = null;
    }
    if (this.highDiskUsageNotificationSent != null) {
      json[r'high_disk_usage_notification_sent'] = this.highDiskUsageNotificationSent;
    } else {
      json[r'high_disk_usage_notification_sent'] = null;
    }
    if (this.unreachableNotificationSent != null) {
      json[r'unreachable_notification_sent'] = this.unreachableNotificationSent;
    } else {
      json[r'unreachable_notification_sent'] = null;
    }
    if (this.unreachableCount != null) {
      json[r'unreachable_count'] = this.unreachableCount;
    } else {
      json[r'unreachable_count'] = null;
    }
    if (this.validationLogs != null) {
      json[r'validation_logs'] = this.validationLogs;
    } else {
      json[r'validation_logs'] = null;
    }
    if (this.logDrainNotificationSent != null) {
      json[r'log_drain_notification_sent'] = this.logDrainNotificationSent;
    } else {
      json[r'log_drain_notification_sent'] = null;
    }
    if (this.swarmCluster != null) {
      json[r'swarm_cluster'] = this.swarmCluster;
    } else {
      json[r'swarm_cluster'] = null;
    }
    if (this.settings != null) {
      json[r'settings'] = this.settings;
    } else {
      json[r'settings'] = null;
    }
    return json;
  }

  /// Returns a new [Server] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Server? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Server[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Server[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Server(
        id: mapValueOfType<int>(json, r'id'),
        uuid: mapValueOfType<String>(json, r'uuid'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        ip: mapValueOfType<String>(json, r'ip'),
        user: mapValueOfType<String>(json, r'user'),
        port: mapValueOfType<int>(json, r'port'),
        proxy: mapCastOfType<String, Object>(json, r'proxy') ?? const {},
        proxyType: ServerProxyTypeEnum.fromJson(json[r'proxy_type']),
        highDiskUsageNotificationSent: mapValueOfType<bool>(json, r'high_disk_usage_notification_sent'),
        unreachableNotificationSent: mapValueOfType<bool>(json, r'unreachable_notification_sent'),
        unreachableCount: mapValueOfType<int>(json, r'unreachable_count'),
        validationLogs: mapValueOfType<String>(json, r'validation_logs'),
        logDrainNotificationSent: mapValueOfType<bool>(json, r'log_drain_notification_sent'),
        swarmCluster: mapValueOfType<String>(json, r'swarm_cluster'),
        settings: ServerSetting.fromJson(json[r'settings']),
      );
    }
    return null;
  }

  static List<Server> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Server>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Server.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Server> mapFromJson(dynamic json) {
    final map = <String, Server>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Server.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Server-objects as value to a dart map
  static Map<String, List<Server>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Server>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Server.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// The proxy type.
class ServerProxyTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ServerProxyTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const traefik = ServerProxyTypeEnum._(r'traefik');
  static const caddy = ServerProxyTypeEnum._(r'caddy');
  static const none = ServerProxyTypeEnum._(r'none');

  /// List of all possible values in this [enum][ServerProxyTypeEnum].
  static const values = <ServerProxyTypeEnum>[
    traefik,
    caddy,
    none,
  ];

  static ServerProxyTypeEnum? fromJson(dynamic value) => ServerProxyTypeEnumTypeTransformer().decode(value);

  static List<ServerProxyTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServerProxyTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServerProxyTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ServerProxyTypeEnum] to String,
/// and [decode] dynamic data back to [ServerProxyTypeEnum].
class ServerProxyTypeEnumTypeTransformer {
  factory ServerProxyTypeEnumTypeTransformer() => _instance ??= const ServerProxyTypeEnumTypeTransformer._();

  const ServerProxyTypeEnumTypeTransformer._();

  String encode(ServerProxyTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ServerProxyTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ServerProxyTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'traefik': return ServerProxyTypeEnum.traefik;
        case r'caddy': return ServerProxyTypeEnum.caddy;
        case r'none': return ServerProxyTypeEnum.none;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ServerProxyTypeEnumTypeTransformer] instance.
  static ServerProxyTypeEnumTypeTransformer? _instance;
}


