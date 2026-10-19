//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateService201Response {
  /// Returns a new [CreateService201Response] instance.
  CreateService201Response({
    this.uuid,
    this.domains = const [],
  });

  /// Service UUID.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uuid;

  /// Service domains.
  List<String> domains;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateService201Response &&
    other.uuid == uuid &&
    _deepEquality.equals(other.domains, domains);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (uuid == null ? 0 : uuid!.hashCode) +
    (domains.hashCode);

  @override
  String toString() => 'CreateService201Response[uuid=$uuid, domains=$domains]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.uuid != null) {
      json[r'uuid'] = this.uuid;
    } else {
      json[r'uuid'] = null;
    }
      json[r'domains'] = this.domains;
    return json;
  }

  /// Returns a new [CreateService201Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateService201Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateService201Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateService201Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateService201Response(
        uuid: mapValueOfType<String>(json, r'uuid'),
        domains: json[r'domains'] is Iterable
            ? (json[r'domains'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<CreateService201Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateService201Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateService201Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateService201Response> mapFromJson(dynamic json) {
    final map = <String, CreateService201Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateService201Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateService201Response-objects as value to a dart map
  static Map<String, List<CreateService201Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateService201Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateService201Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

