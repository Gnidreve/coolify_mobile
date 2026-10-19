//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreatePublicApplicationRequestDockerComposeDomainsInner {
  /// Returns a new [CreatePublicApplicationRequestDockerComposeDomainsInner] instance.
  CreatePublicApplicationRequestDockerComposeDomainsInner({
    this.name,
    this.domain,
    this.redirect,
  });

  /// The service name as defined in docker-compose.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Comma-separated list of URLs (e.g. \"https://app.coolify.io,https://app2.coolify.io\")
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domain;

  /// Per-service www/non-www redirect for this compose service.
  CreatePublicApplicationRequestDockerComposeDomainsInnerRedirectEnum? redirect;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreatePublicApplicationRequestDockerComposeDomainsInner &&
    other.name == name &&
    other.domain == domain &&
    other.redirect == redirect;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (domain == null ? 0 : domain!.hashCode) +
    (redirect == null ? 0 : redirect!.hashCode);

  @override
  String toString() => 'CreatePublicApplicationRequestDockerComposeDomainsInner[name=$name, domain=$domain, redirect=$redirect]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.domain != null) {
      json[r'domain'] = this.domain;
    } else {
      json[r'domain'] = null;
    }
    if (this.redirect != null) {
      json[r'redirect'] = this.redirect;
    } else {
      json[r'redirect'] = null;
    }
    return json;
  }

  /// Returns a new [CreatePublicApplicationRequestDockerComposeDomainsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreatePublicApplicationRequestDockerComposeDomainsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreatePublicApplicationRequestDockerComposeDomainsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreatePublicApplicationRequestDockerComposeDomainsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreatePublicApplicationRequestDockerComposeDomainsInner(
        name: mapValueOfType<String>(json, r'name'),
        domain: mapValueOfType<String>(json, r'domain'),
        redirect: CreatePublicApplicationRequestDockerComposeDomainsInnerRedirectEnum.fromJson(json[r'redirect']),
      );
    }
    return null;
  }

  static List<CreatePublicApplicationRequestDockerComposeDomainsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePublicApplicationRequestDockerComposeDomainsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePublicApplicationRequestDockerComposeDomainsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreatePublicApplicationRequestDockerComposeDomainsInner> mapFromJson(dynamic json) {
    final map = <String, CreatePublicApplicationRequestDockerComposeDomainsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreatePublicApplicationRequestDockerComposeDomainsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreatePublicApplicationRequestDockerComposeDomainsInner-objects as value to a dart map
  static Map<String, List<CreatePublicApplicationRequestDockerComposeDomainsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreatePublicApplicationRequestDockerComposeDomainsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreatePublicApplicationRequestDockerComposeDomainsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Per-service www/non-www redirect for this compose service.
class CreatePublicApplicationRequestDockerComposeDomainsInnerRedirectEnum {
  /// Instantiate a new enum with the provided [value].
  const CreatePublicApplicationRequestDockerComposeDomainsInnerRedirectEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const www = CreatePublicApplicationRequestDockerComposeDomainsInnerRedirectEnum._(r'www');
  static const nonWww = CreatePublicApplicationRequestDockerComposeDomainsInnerRedirectEnum._(r'non-www');
  static const both = CreatePublicApplicationRequestDockerComposeDomainsInnerRedirectEnum._(r'both');

  /// List of all possible values in this [enum][CreatePublicApplicationRequestDockerComposeDomainsInnerRedirectEnum].
  static const values = <CreatePublicApplicationRequestDockerComposeDomainsInnerRedirectEnum>[
    www,
    nonWww,
    both,
  ];

  static CreatePublicApplicationRequestDockerComposeDomainsInnerRedirectEnum? fromJson(dynamic value) => CreatePublicApplicationRequestDockerComposeDomainsInnerRedirectEnumTypeTransformer().decode(value);

  static List<CreatePublicApplicationRequestDockerComposeDomainsInnerRedirectEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePublicApplicationRequestDockerComposeDomainsInnerRedirectEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePublicApplicationRequestDockerComposeDomainsInnerRedirectEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreatePublicApplicationRequestDockerComposeDomainsInnerRedirectEnum] to String,
/// and [decode] dynamic data back to [CreatePublicApplicationRequestDockerComposeDomainsInnerRedirectEnum].
class CreatePublicApplicationRequestDockerComposeDomainsInnerRedirectEnumTypeTransformer {
  factory CreatePublicApplicationRequestDockerComposeDomainsInnerRedirectEnumTypeTransformer() => _instance ??= const CreatePublicApplicationRequestDockerComposeDomainsInnerRedirectEnumTypeTransformer._();

  const CreatePublicApplicationRequestDockerComposeDomainsInnerRedirectEnumTypeTransformer._();

  String encode(CreatePublicApplicationRequestDockerComposeDomainsInnerRedirectEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreatePublicApplicationRequestDockerComposeDomainsInnerRedirectEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreatePublicApplicationRequestDockerComposeDomainsInnerRedirectEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'www': return CreatePublicApplicationRequestDockerComposeDomainsInnerRedirectEnum.www;
        case r'non-www': return CreatePublicApplicationRequestDockerComposeDomainsInnerRedirectEnum.nonWww;
        case r'both': return CreatePublicApplicationRequestDockerComposeDomainsInnerRedirectEnum.both;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreatePublicApplicationRequestDockerComposeDomainsInnerRedirectEnumTypeTransformer] instance.
  static CreatePublicApplicationRequestDockerComposeDomainsInnerRedirectEnumTypeTransformer? _instance;
}


