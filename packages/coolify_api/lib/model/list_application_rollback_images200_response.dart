//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListApplicationRollbackImages200Response {
  /// Returns a new [ListApplicationRollbackImages200Response] instance.
  ListApplicationRollbackImages200Response({
    this.current,
    this.images = const [],
  });

  Object? current;

  List<ListApplicationRollbackImages200ResponseImagesInner> images;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListApplicationRollbackImages200Response &&
    other.current == current &&
    _deepEquality.equals(other.images, images);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (current == null ? 0 : current!.hashCode) +
    (images.hashCode);

  @override
  String toString() => 'ListApplicationRollbackImages200Response[current=$current, images=$images]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.current != null) {
      json[r'current'] = this.current;
    } else {
      json[r'current'] = null;
    }
      json[r'images'] = this.images;
    return json;
  }

  /// Returns a new [ListApplicationRollbackImages200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListApplicationRollbackImages200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ListApplicationRollbackImages200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ListApplicationRollbackImages200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListApplicationRollbackImages200Response(
        current: mapValueOfType<Object>(json, r'current'),
        images: ListApplicationRollbackImages200ResponseImagesInner.listFromJson(json[r'images']),
      );
    }
    return null;
  }

  static List<ListApplicationRollbackImages200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListApplicationRollbackImages200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListApplicationRollbackImages200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListApplicationRollbackImages200Response> mapFromJson(dynamic json) {
    final map = <String, ListApplicationRollbackImages200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListApplicationRollbackImages200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListApplicationRollbackImages200Response-objects as value to a dart map
  static Map<String, List<ListApplicationRollbackImages200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListApplicationRollbackImages200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListApplicationRollbackImages200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

