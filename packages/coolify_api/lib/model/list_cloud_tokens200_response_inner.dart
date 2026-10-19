//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListCloudTokens200ResponseInner {
  /// Returns a new [ListCloudTokens200ResponseInner] instance.
  ListCloudTokens200ResponseInner({
    this.uuid,
    this.name,
    this.provider,
    this.teamId,
    this.serversCount,
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

  ListCloudTokens200ResponseInnerProviderEnum? provider;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? teamId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? serversCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListCloudTokens200ResponseInner &&
    other.uuid == uuid &&
    other.name == name &&
    other.provider == provider &&
    other.teamId == teamId &&
    other.serversCount == serversCount &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (uuid == null ? 0 : uuid!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (teamId == null ? 0 : teamId!.hashCode) +
    (serversCount == null ? 0 : serversCount!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'ListCloudTokens200ResponseInner[uuid=$uuid, name=$name, provider=$provider, teamId=$teamId, serversCount=$serversCount, createdAt=$createdAt, updatedAt=$updatedAt]';

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
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.teamId != null) {
      json[r'team_id'] = this.teamId;
    } else {
      json[r'team_id'] = null;
    }
    if (this.serversCount != null) {
      json[r'servers_count'] = this.serversCount;
    } else {
      json[r'servers_count'] = null;
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
    return json;
  }

  /// Returns a new [ListCloudTokens200ResponseInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListCloudTokens200ResponseInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ListCloudTokens200ResponseInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ListCloudTokens200ResponseInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListCloudTokens200ResponseInner(
        uuid: mapValueOfType<String>(json, r'uuid'),
        name: mapValueOfType<String>(json, r'name'),
        provider: ListCloudTokens200ResponseInnerProviderEnum.fromJson(json[r'provider']),
        teamId: mapValueOfType<int>(json, r'team_id'),
        serversCount: mapValueOfType<int>(json, r'servers_count'),
        createdAt: mapValueOfType<String>(json, r'created_at'),
        updatedAt: mapValueOfType<String>(json, r'updated_at'),
      );
    }
    return null;
  }

  static List<ListCloudTokens200ResponseInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListCloudTokens200ResponseInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListCloudTokens200ResponseInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListCloudTokens200ResponseInner> mapFromJson(dynamic json) {
    final map = <String, ListCloudTokens200ResponseInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListCloudTokens200ResponseInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListCloudTokens200ResponseInner-objects as value to a dart map
  static Map<String, List<ListCloudTokens200ResponseInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListCloudTokens200ResponseInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListCloudTokens200ResponseInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class ListCloudTokens200ResponseInnerProviderEnum {
  /// Instantiate a new enum with the provided [value].
  const ListCloudTokens200ResponseInnerProviderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const hetzner = ListCloudTokens200ResponseInnerProviderEnum._(r'hetzner');
  static const digitalocean = ListCloudTokens200ResponseInnerProviderEnum._(r'digitalocean');
  static const vultr = ListCloudTokens200ResponseInnerProviderEnum._(r'vultr');

  /// List of all possible values in this [enum][ListCloudTokens200ResponseInnerProviderEnum].
  static const values = <ListCloudTokens200ResponseInnerProviderEnum>[
    hetzner,
    digitalocean,
    vultr,
  ];

  static ListCloudTokens200ResponseInnerProviderEnum? fromJson(dynamic value) => ListCloudTokens200ResponseInnerProviderEnumTypeTransformer().decode(value);

  static List<ListCloudTokens200ResponseInnerProviderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListCloudTokens200ResponseInnerProviderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListCloudTokens200ResponseInnerProviderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ListCloudTokens200ResponseInnerProviderEnum] to String,
/// and [decode] dynamic data back to [ListCloudTokens200ResponseInnerProviderEnum].
class ListCloudTokens200ResponseInnerProviderEnumTypeTransformer {
  factory ListCloudTokens200ResponseInnerProviderEnumTypeTransformer() => _instance ??= const ListCloudTokens200ResponseInnerProviderEnumTypeTransformer._();

  const ListCloudTokens200ResponseInnerProviderEnumTypeTransformer._();

  String encode(ListCloudTokens200ResponseInnerProviderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ListCloudTokens200ResponseInnerProviderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ListCloudTokens200ResponseInnerProviderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'hetzner': return ListCloudTokens200ResponseInnerProviderEnum.hetzner;
        case r'digitalocean': return ListCloudTokens200ResponseInnerProviderEnum.digitalocean;
        case r'vultr': return ListCloudTokens200ResponseInnerProviderEnum.vultr;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ListCloudTokens200ResponseInnerProviderEnumTypeTransformer] instance.
  static ListCloudTokens200ResponseInnerProviderEnumTypeTransformer? _instance;
}


