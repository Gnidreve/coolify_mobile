//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetHetznerNetworks200ResponseInner {
  /// Returns a new [GetHetznerNetworks200ResponseInner] instance.
  GetHetznerNetworks200ResponseInner({
    this.id,
    this.name,
    this.ipRange,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

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
  String? ipRange;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetHetznerNetworks200ResponseInner &&
    other.id == id &&
    other.name == name &&
    other.ipRange == ipRange;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (ipRange == null ? 0 : ipRange!.hashCode);

  @override
  String toString() => 'GetHetznerNetworks200ResponseInner[id=$id, name=$name, ipRange=$ipRange]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.ipRange != null) {
      json[r'ip_range'] = this.ipRange;
    } else {
      json[r'ip_range'] = null;
    }
    return json;
  }

  /// Returns a new [GetHetznerNetworks200ResponseInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetHetznerNetworks200ResponseInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetHetznerNetworks200ResponseInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetHetznerNetworks200ResponseInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetHetznerNetworks200ResponseInner(
        id: mapValueOfType<int>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        ipRange: mapValueOfType<String>(json, r'ip_range'),
      );
    }
    return null;
  }

  static List<GetHetznerNetworks200ResponseInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetHetznerNetworks200ResponseInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetHetznerNetworks200ResponseInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetHetznerNetworks200ResponseInner> mapFromJson(dynamic json) {
    final map = <String, GetHetznerNetworks200ResponseInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetHetznerNetworks200ResponseInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetHetznerNetworks200ResponseInner-objects as value to a dart map
  static Map<String, List<GetHetznerNetworks200ResponseInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetHetznerNetworks200ResponseInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetHetznerNetworks200ResponseInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

