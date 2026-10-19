//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateServerRequest {
  /// Returns a new [CreateServerRequest] instance.
  CreateServerRequest({
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
  CreateServerRequestServerRoleEnum? serverRole;

  /// Deprecated: use server_role instead. true sets server_role to build, false sets it to both. Must not conflict with server_role.
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

  /// The proxy type.
  CreateServerRequestProxyTypeEnum? proxyType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateServerRequest &&
    other.name == name &&
    other.description == description &&
    other.ip == ip &&
    other.port == port &&
    other.user == user &&
    other.privateKeyUuid == privateKeyUuid &&
    other.serverRole == serverRole &&
    other.isBuildServer == isBuildServer &&
    other.instantValidate == instantValidate &&
    other.proxyType == proxyType;

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
    (proxyType == null ? 0 : proxyType!.hashCode);

  @override
  String toString() => 'CreateServerRequest[name=$name, description=$description, ip=$ip, port=$port, user=$user, privateKeyUuid=$privateKeyUuid, serverRole=$serverRole, isBuildServer=$isBuildServer, instantValidate=$instantValidate, proxyType=$proxyType]';

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
    return json;
  }

  /// Returns a new [CreateServerRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateServerRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateServerRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateServerRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateServerRequest(
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        ip: mapValueOfType<String>(json, r'ip'),
        port: mapValueOfType<int>(json, r'port'),
        user: mapValueOfType<String>(json, r'user'),
        privateKeyUuid: mapValueOfType<String>(json, r'private_key_uuid'),
        serverRole: CreateServerRequestServerRoleEnum.fromJson(json[r'server_role']),
        isBuildServer: mapValueOfType<bool>(json, r'is_build_server'),
        instantValidate: mapValueOfType<bool>(json, r'instant_validate'),
        proxyType: CreateServerRequestProxyTypeEnum.fromJson(json[r'proxy_type']),
      );
    }
    return null;
  }

  static List<CreateServerRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateServerRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateServerRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateServerRequest> mapFromJson(dynamic json) {
    final map = <String, CreateServerRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateServerRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateServerRequest-objects as value to a dart map
  static Map<String, List<CreateServerRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateServerRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateServerRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Server role.
class CreateServerRequestServerRoleEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateServerRequestServerRoleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const deployment = CreateServerRequestServerRoleEnum._(r'deployment');
  static const build = CreateServerRequestServerRoleEnum._(r'build');
  static const both = CreateServerRequestServerRoleEnum._(r'both');

  /// List of all possible values in this [enum][CreateServerRequestServerRoleEnum].
  static const values = <CreateServerRequestServerRoleEnum>[
    deployment,
    build,
    both,
  ];

  static CreateServerRequestServerRoleEnum? fromJson(dynamic value) => CreateServerRequestServerRoleEnumTypeTransformer().decode(value);

  static List<CreateServerRequestServerRoleEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateServerRequestServerRoleEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateServerRequestServerRoleEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateServerRequestServerRoleEnum] to String,
/// and [decode] dynamic data back to [CreateServerRequestServerRoleEnum].
class CreateServerRequestServerRoleEnumTypeTransformer {
  factory CreateServerRequestServerRoleEnumTypeTransformer() => _instance ??= const CreateServerRequestServerRoleEnumTypeTransformer._();

  const CreateServerRequestServerRoleEnumTypeTransformer._();

  String encode(CreateServerRequestServerRoleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateServerRequestServerRoleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateServerRequestServerRoleEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'deployment': return CreateServerRequestServerRoleEnum.deployment;
        case r'build': return CreateServerRequestServerRoleEnum.build;
        case r'both': return CreateServerRequestServerRoleEnum.both;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateServerRequestServerRoleEnumTypeTransformer] instance.
  static CreateServerRequestServerRoleEnumTypeTransformer? _instance;
}


/// The proxy type.
class CreateServerRequestProxyTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateServerRequestProxyTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const traefik = CreateServerRequestProxyTypeEnum._(r'traefik');
  static const caddy = CreateServerRequestProxyTypeEnum._(r'caddy');
  static const none = CreateServerRequestProxyTypeEnum._(r'none');

  /// List of all possible values in this [enum][CreateServerRequestProxyTypeEnum].
  static const values = <CreateServerRequestProxyTypeEnum>[
    traefik,
    caddy,
    none,
  ];

  static CreateServerRequestProxyTypeEnum? fromJson(dynamic value) => CreateServerRequestProxyTypeEnumTypeTransformer().decode(value);

  static List<CreateServerRequestProxyTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateServerRequestProxyTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateServerRequestProxyTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateServerRequestProxyTypeEnum] to String,
/// and [decode] dynamic data back to [CreateServerRequestProxyTypeEnum].
class CreateServerRequestProxyTypeEnumTypeTransformer {
  factory CreateServerRequestProxyTypeEnumTypeTransformer() => _instance ??= const CreateServerRequestProxyTypeEnumTypeTransformer._();

  const CreateServerRequestProxyTypeEnumTypeTransformer._();

  String encode(CreateServerRequestProxyTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateServerRequestProxyTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateServerRequestProxyTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'traefik': return CreateServerRequestProxyTypeEnum.traefik;
        case r'caddy': return CreateServerRequestProxyTypeEnum.caddy;
        case r'none': return CreateServerRequestProxyTypeEnum.none;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateServerRequestProxyTypeEnumTypeTransformer] instance.
  static CreateServerRequestProxyTypeEnumTypeTransformer? _instance;
}


