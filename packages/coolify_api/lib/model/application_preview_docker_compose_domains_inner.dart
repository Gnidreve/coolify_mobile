//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApplicationPreviewDockerComposeDomainsInner {
  /// Returns a new [ApplicationPreviewDockerComposeDomainsInner] instance.
  ApplicationPreviewDockerComposeDomainsInner({
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

  Object? redirect;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ApplicationPreviewDockerComposeDomainsInner &&
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
  String toString() => 'ApplicationPreviewDockerComposeDomainsInner[name=$name, domain=$domain, redirect=$redirect]';

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

  /// Returns a new [ApplicationPreviewDockerComposeDomainsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApplicationPreviewDockerComposeDomainsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ApplicationPreviewDockerComposeDomainsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ApplicationPreviewDockerComposeDomainsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ApplicationPreviewDockerComposeDomainsInner(
        name: mapValueOfType<String>(json, r'name'),
        domain: mapValueOfType<Object>(json, r'domain'),
        redirect: mapValueOfType<Object>(json, r'redirect'),
      );
    }
    return null;
  }

  static List<ApplicationPreviewDockerComposeDomainsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ApplicationPreviewDockerComposeDomainsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApplicationPreviewDockerComposeDomainsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApplicationPreviewDockerComposeDomainsInner> mapFromJson(dynamic json) {
    final map = <String, ApplicationPreviewDockerComposeDomainsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApplicationPreviewDockerComposeDomainsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApplicationPreviewDockerComposeDomainsInner-objects as value to a dart map
  static Map<String, List<ApplicationPreviewDockerComposeDomainsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ApplicationPreviewDockerComposeDomainsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApplicationPreviewDockerComposeDomainsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

