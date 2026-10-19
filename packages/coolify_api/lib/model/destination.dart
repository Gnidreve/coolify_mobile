//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Destination {
  /// Returns a new [Destination] instance.
  Destination({
    this.uuid,
    this.name,
    this.network,
    this.type,
    this.serverUuid,
    this.createdAt,
    this.updatedAt,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uuid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? network;

  DestinationTypeEnum? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serverUuid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Destination &&
    other.uuid == uuid &&
    other.name == name &&
    other.network == network &&
    other.type == type &&
    other.serverUuid == serverUuid &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (uuid == null ? 0 : uuid!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (network == null ? 0 : network!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (serverUuid == null ? 0 : serverUuid!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'Destination[uuid=$uuid, name=$name, network=$network, type=$type, serverUuid=$serverUuid, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.network != null) {
      json[r'network'] = this.network;
    } else {
      json[r'network'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.serverUuid != null) {
      json[r'server_uuid'] = this.serverUuid;
    } else {
      json[r'server_uuid'] = null;
    }
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updated_at'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updated_at'] = null;
    }
    return json;
  }

  /// Returns a new [Destination] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Destination? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Destination[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Destination[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Destination(
        uuid: mapValueOfType<String>(json, r'uuid'),
        name: mapValueOfType<String>(json, r'name'),
        network: mapValueOfType<String>(json, r'network'),
        type: DestinationTypeEnum.fromJson(json[r'type']),
        serverUuid: mapValueOfType<String>(json, r'server_uuid'),
        createdAt: mapDateTime(json, r'created_at', r''),
        updatedAt: mapDateTime(json, r'updated_at', r''),
      );
    }
    return null;
  }

  static List<Destination> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Destination>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Destination.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Destination> mapFromJson(dynamic json) {
    final map = <String, Destination>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Destination.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Destination-objects as value to a dart map
  static Map<String, List<Destination>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Destination>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Destination.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class DestinationTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const DestinationTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const standalone = DestinationTypeEnum._(r'standalone');
  static const swarm = DestinationTypeEnum._(r'swarm');

  /// List of all possible values in this [enum][DestinationTypeEnum].
  static const values = <DestinationTypeEnum>[
    standalone,
    swarm,
  ];

  static DestinationTypeEnum? fromJson(dynamic value) => DestinationTypeEnumTypeTransformer().decode(value);

  static List<DestinationTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DestinationTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DestinationTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DestinationTypeEnum] to String,
/// and [decode] dynamic data back to [DestinationTypeEnum].
class DestinationTypeEnumTypeTransformer {
  factory DestinationTypeEnumTypeTransformer() => _instance ??= const DestinationTypeEnumTypeTransformer._();

  const DestinationTypeEnumTypeTransformer._();

  String encode(DestinationTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DestinationTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DestinationTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'standalone': return DestinationTypeEnum.standalone;
        case r'swarm': return DestinationTypeEnum.swarm;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DestinationTypeEnumTypeTransformer] instance.
  static DestinationTypeEnumTypeTransformer? _instance;
}


