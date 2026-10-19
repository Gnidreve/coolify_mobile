//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListServerRegistries200Response {
  /// Returns a new [ListServerRegistries200Response] instance.
  ListServerRegistries200Response({
    this.registries = const [],
    this.error,
  });

  List<ListServerRegistries200ResponseRegistriesInner> registries;

  /// Set when the logins could not be read from the server.
  Object? error;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListServerRegistries200Response &&
    _deepEquality.equals(other.registries, registries) &&
    other.error == error;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (registries.hashCode) +
    (error == null ? 0 : error!.hashCode);

  @override
  String toString() => 'ListServerRegistries200Response[registries=$registries, error=$error]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'registries'] = this.registries;
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    return json;
  }

  /// Returns a new [ListServerRegistries200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListServerRegistries200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ListServerRegistries200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ListServerRegistries200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListServerRegistries200Response(
        registries: ListServerRegistries200ResponseRegistriesInner.listFromJson(json[r'registries']),
        error: mapValueOfType<Object>(json, r'error'),
      );
    }
    return null;
  }

  static List<ListServerRegistries200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListServerRegistries200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListServerRegistries200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListServerRegistries200Response> mapFromJson(dynamic json) {
    final map = <String, ListServerRegistries200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListServerRegistries200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListServerRegistries200Response-objects as value to a dart map
  static Map<String, List<ListServerRegistries200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListServerRegistries200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListServerRegistries200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

