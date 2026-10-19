//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateServerDestinationRequest {
  /// Returns a new [CreateServerDestinationRequest] instance.
  CreateServerDestinationRequest({
    this.name,
    required this.network,
    this.type,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Name of a new Docker network. Must not be bridge, host, none, or a network that already exists on the server.
  String network;

  CreateServerDestinationRequestTypeEnum? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateServerDestinationRequest &&
    other.name == name &&
    other.network == network &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (network.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'CreateServerDestinationRequest[name=$name, network=$network, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'network'] = this.network;
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [CreateServerDestinationRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateServerDestinationRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateServerDestinationRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateServerDestinationRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateServerDestinationRequest(
        name: mapValueOfType<String>(json, r'name'),
        network: mapValueOfType<String>(json, r'network')!,
        type: CreateServerDestinationRequestTypeEnum.fromJson(json[r'type']),
      );
    }
    return null;
  }

  static List<CreateServerDestinationRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateServerDestinationRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateServerDestinationRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateServerDestinationRequest> mapFromJson(dynamic json) {
    final map = <String, CreateServerDestinationRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateServerDestinationRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateServerDestinationRequest-objects as value to a dart map
  static Map<String, List<CreateServerDestinationRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateServerDestinationRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateServerDestinationRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'network',
  };
}


class CreateServerDestinationRequestTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateServerDestinationRequestTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const standalone = CreateServerDestinationRequestTypeEnum._(r'standalone');
  static const swarm = CreateServerDestinationRequestTypeEnum._(r'swarm');

  /// List of all possible values in this [enum][CreateServerDestinationRequestTypeEnum].
  static const values = <CreateServerDestinationRequestTypeEnum>[
    standalone,
    swarm,
  ];

  static CreateServerDestinationRequestTypeEnum? fromJson(dynamic value) => CreateServerDestinationRequestTypeEnumTypeTransformer().decode(value);

  static List<CreateServerDestinationRequestTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateServerDestinationRequestTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateServerDestinationRequestTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateServerDestinationRequestTypeEnum] to String,
/// and [decode] dynamic data back to [CreateServerDestinationRequestTypeEnum].
class CreateServerDestinationRequestTypeEnumTypeTransformer {
  factory CreateServerDestinationRequestTypeEnumTypeTransformer() => _instance ??= const CreateServerDestinationRequestTypeEnumTypeTransformer._();

  const CreateServerDestinationRequestTypeEnumTypeTransformer._();

  String encode(CreateServerDestinationRequestTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateServerDestinationRequestTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateServerDestinationRequestTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'standalone': return CreateServerDestinationRequestTypeEnum.standalone;
        case r'swarm': return CreateServerDestinationRequestTypeEnum.swarm;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateServerDestinationRequestTypeEnumTypeTransformer] instance.
  static CreateServerDestinationRequestTypeEnumTypeTransformer? _instance;
}


