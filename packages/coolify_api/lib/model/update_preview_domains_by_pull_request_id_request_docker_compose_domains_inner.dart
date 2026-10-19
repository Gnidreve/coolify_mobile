//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInner {
  /// Returns a new [UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInner] instance.
  UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInner({
    this.name,
    this.domain,
    this.redirect,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  Object? domain;

  UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInnerRedirectEnum? redirect;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInner &&
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
  String toString() => 'UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInner[name=$name, domain=$domain, redirect=$redirect]';

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

  /// Returns a new [UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInner(
        name: mapValueOfType<String>(json, r'name'),
        domain: mapValueOfType<Object>(json, r'domain'),
        redirect: UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInnerRedirectEnum.fromJson(json[r'redirect']),
      );
    }
    return null;
  }

  static List<UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInner> mapFromJson(dynamic json) {
    final map = <String, UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInner-objects as value to a dart map
  static Map<String, List<UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInnerRedirectEnum {
  /// Instantiate a new enum with the provided [value].
  const UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInnerRedirectEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const www = UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInnerRedirectEnum._(r'www');
  static const nonWww = UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInnerRedirectEnum._(r'non-www');
  static const both = UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInnerRedirectEnum._(r'both');

  /// List of all possible values in this [enum][UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInnerRedirectEnum].
  static const values = <UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInnerRedirectEnum>[
    www,
    nonWww,
    both,
  ];

  static UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInnerRedirectEnum? fromJson(dynamic value) => UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInnerRedirectEnumTypeTransformer().decode(value);

  static List<UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInnerRedirectEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInnerRedirectEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInnerRedirectEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInnerRedirectEnum] to String,
/// and [decode] dynamic data back to [UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInnerRedirectEnum].
class UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInnerRedirectEnumTypeTransformer {
  factory UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInnerRedirectEnumTypeTransformer() => _instance ??= const UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInnerRedirectEnumTypeTransformer._();

  const UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInnerRedirectEnumTypeTransformer._();

  String encode(UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInnerRedirectEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInnerRedirectEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInnerRedirectEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'www': return UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInnerRedirectEnum.www;
        case r'non-www': return UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInnerRedirectEnum.nonWww;
        case r'both': return UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInnerRedirectEnum.both;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInnerRedirectEnumTypeTransformer] instance.
  static UpdatePreviewDomainsByPullRequestIdRequestDockerComposeDomainsInnerRedirectEnumTypeTransformer? _instance;
}


