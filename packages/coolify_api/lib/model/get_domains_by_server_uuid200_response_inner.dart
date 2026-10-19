//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetDomainsByServerUuid200ResponseInner {
  /// Returns a new [GetDomainsByServerUuid200ResponseInner] instance.
  GetDomainsByServerUuid200ResponseInner({
    this.ip,
    this.domains = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ip;

  List<String> domains;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetDomainsByServerUuid200ResponseInner &&
    other.ip == ip &&
    _deepEquality.equals(other.domains, domains);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ip == null ? 0 : ip!.hashCode) +
    (domains.hashCode);

  @override
  String toString() => 'GetDomainsByServerUuid200ResponseInner[ip=$ip, domains=$domains]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ip != null) {
      json[r'ip'] = this.ip;
    } else {
      json[r'ip'] = null;
    }
      json[r'domains'] = this.domains;
    return json;
  }

  /// Returns a new [GetDomainsByServerUuid200ResponseInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetDomainsByServerUuid200ResponseInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetDomainsByServerUuid200ResponseInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetDomainsByServerUuid200ResponseInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetDomainsByServerUuid200ResponseInner(
        ip: mapValueOfType<String>(json, r'ip'),
        domains: json[r'domains'] is Iterable
            ? (json[r'domains'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<GetDomainsByServerUuid200ResponseInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetDomainsByServerUuid200ResponseInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetDomainsByServerUuid200ResponseInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetDomainsByServerUuid200ResponseInner> mapFromJson(dynamic json) {
    final map = <String, GetDomainsByServerUuid200ResponseInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetDomainsByServerUuid200ResponseInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetDomainsByServerUuid200ResponseInner-objects as value to a dart map
  static Map<String, List<GetDomainsByServerUuid200ResponseInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetDomainsByServerUuid200ResponseInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetDomainsByServerUuid200ResponseInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

