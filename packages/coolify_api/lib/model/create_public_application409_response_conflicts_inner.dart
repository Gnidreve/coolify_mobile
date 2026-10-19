//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreatePublicApplication409ResponseConflictsInner {
  /// Returns a new [CreatePublicApplication409ResponseConflictsInner] instance.
  CreatePublicApplication409ResponseConflictsInner({
    this.domain,
    this.resourceName,
    this.resourceUuid,
    this.resourceType,
    this.message,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domain;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? resourceName;

  String? resourceUuid;

  CreatePublicApplication409ResponseConflictsInnerResourceTypeEnum? resourceType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreatePublicApplication409ResponseConflictsInner &&
    other.domain == domain &&
    other.resourceName == resourceName &&
    other.resourceUuid == resourceUuid &&
    other.resourceType == resourceType &&
    other.message == message;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (domain == null ? 0 : domain!.hashCode) +
    (resourceName == null ? 0 : resourceName!.hashCode) +
    (resourceUuid == null ? 0 : resourceUuid!.hashCode) +
    (resourceType == null ? 0 : resourceType!.hashCode) +
    (message == null ? 0 : message!.hashCode);

  @override
  String toString() => 'CreatePublicApplication409ResponseConflictsInner[domain=$domain, resourceName=$resourceName, resourceUuid=$resourceUuid, resourceType=$resourceType, message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.domain != null) {
      json[r'domain'] = this.domain;
    } else {
      json[r'domain'] = null;
    }
    if (this.resourceName != null) {
      json[r'resource_name'] = this.resourceName;
    } else {
      json[r'resource_name'] = null;
    }
    if (this.resourceUuid != null) {
      json[r'resource_uuid'] = this.resourceUuid;
    } else {
      json[r'resource_uuid'] = null;
    }
    if (this.resourceType != null) {
      json[r'resource_type'] = this.resourceType;
    } else {
      json[r'resource_type'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    return json;
  }

  /// Returns a new [CreatePublicApplication409ResponseConflictsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreatePublicApplication409ResponseConflictsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreatePublicApplication409ResponseConflictsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreatePublicApplication409ResponseConflictsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreatePublicApplication409ResponseConflictsInner(
        domain: mapValueOfType<String>(json, r'domain'),
        resourceName: mapValueOfType<String>(json, r'resource_name'),
        resourceUuid: mapValueOfType<String>(json, r'resource_uuid'),
        resourceType: CreatePublicApplication409ResponseConflictsInnerResourceTypeEnum.fromJson(json[r'resource_type']),
        message: mapValueOfType<String>(json, r'message'),
      );
    }
    return null;
  }

  static List<CreatePublicApplication409ResponseConflictsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePublicApplication409ResponseConflictsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePublicApplication409ResponseConflictsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreatePublicApplication409ResponseConflictsInner> mapFromJson(dynamic json) {
    final map = <String, CreatePublicApplication409ResponseConflictsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreatePublicApplication409ResponseConflictsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreatePublicApplication409ResponseConflictsInner-objects as value to a dart map
  static Map<String, List<CreatePublicApplication409ResponseConflictsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreatePublicApplication409ResponseConflictsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreatePublicApplication409ResponseConflictsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class CreatePublicApplication409ResponseConflictsInnerResourceTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const CreatePublicApplication409ResponseConflictsInnerResourceTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const application = CreatePublicApplication409ResponseConflictsInnerResourceTypeEnum._(r'application');
  static const service = CreatePublicApplication409ResponseConflictsInnerResourceTypeEnum._(r'service');
  static const instance = CreatePublicApplication409ResponseConflictsInnerResourceTypeEnum._(r'instance');

  /// List of all possible values in this [enum][CreatePublicApplication409ResponseConflictsInnerResourceTypeEnum].
  static const values = <CreatePublicApplication409ResponseConflictsInnerResourceTypeEnum>[
    application,
    service,
    instance,
  ];

  static CreatePublicApplication409ResponseConflictsInnerResourceTypeEnum? fromJson(dynamic value) => CreatePublicApplication409ResponseConflictsInnerResourceTypeEnumTypeTransformer().decode(value);

  static List<CreatePublicApplication409ResponseConflictsInnerResourceTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePublicApplication409ResponseConflictsInnerResourceTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePublicApplication409ResponseConflictsInnerResourceTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreatePublicApplication409ResponseConflictsInnerResourceTypeEnum] to String,
/// and [decode] dynamic data back to [CreatePublicApplication409ResponseConflictsInnerResourceTypeEnum].
class CreatePublicApplication409ResponseConflictsInnerResourceTypeEnumTypeTransformer {
  factory CreatePublicApplication409ResponseConflictsInnerResourceTypeEnumTypeTransformer() => _instance ??= const CreatePublicApplication409ResponseConflictsInnerResourceTypeEnumTypeTransformer._();

  const CreatePublicApplication409ResponseConflictsInnerResourceTypeEnumTypeTransformer._();

  String encode(CreatePublicApplication409ResponseConflictsInnerResourceTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreatePublicApplication409ResponseConflictsInnerResourceTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreatePublicApplication409ResponseConflictsInnerResourceTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'application': return CreatePublicApplication409ResponseConflictsInnerResourceTypeEnum.application;
        case r'service': return CreatePublicApplication409ResponseConflictsInnerResourceTypeEnum.service;
        case r'instance': return CreatePublicApplication409ResponseConflictsInnerResourceTypeEnum.instance;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreatePublicApplication409ResponseConflictsInnerResourceTypeEnumTypeTransformer] instance.
  static CreatePublicApplication409ResponseConflictsInnerResourceTypeEnumTypeTransformer? _instance;
}


