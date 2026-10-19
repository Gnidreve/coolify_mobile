//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListStoragesByApplicationUuid200Response {
  /// Returns a new [ListStoragesByApplicationUuid200Response] instance.
  ListStoragesByApplicationUuid200Response({
    this.persistentStorages,
    this.fileStorages,
  });

  Object? persistentStorages;

  Object? fileStorages;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListStoragesByApplicationUuid200Response &&
    other.persistentStorages == persistentStorages &&
    other.fileStorages == fileStorages;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (persistentStorages == null ? 0 : persistentStorages!.hashCode) +
    (fileStorages == null ? 0 : fileStorages!.hashCode);

  @override
  String toString() => 'ListStoragesByApplicationUuid200Response[persistentStorages=$persistentStorages, fileStorages=$fileStorages]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.persistentStorages != null) {
      json[r'persistent_storages'] = this.persistentStorages;
    } else {
      json[r'persistent_storages'] = null;
    }
    if (this.fileStorages != null) {
      json[r'file_storages'] = this.fileStorages;
    } else {
      json[r'file_storages'] = null;
    }
    return json;
  }

  /// Returns a new [ListStoragesByApplicationUuid200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListStoragesByApplicationUuid200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ListStoragesByApplicationUuid200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ListStoragesByApplicationUuid200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListStoragesByApplicationUuid200Response(
        persistentStorages: mapValueOfType<Object>(json, r'persistent_storages'),
        fileStorages: mapValueOfType<Object>(json, r'file_storages'),
      );
    }
    return null;
  }

  static List<ListStoragesByApplicationUuid200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListStoragesByApplicationUuid200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListStoragesByApplicationUuid200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListStoragesByApplicationUuid200Response> mapFromJson(dynamic json) {
    final map = <String, ListStoragesByApplicationUuid200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListStoragesByApplicationUuid200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListStoragesByApplicationUuid200Response-objects as value to a dart map
  static Map<String, List<ListStoragesByApplicationUuid200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListStoragesByApplicationUuid200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListStoragesByApplicationUuid200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

