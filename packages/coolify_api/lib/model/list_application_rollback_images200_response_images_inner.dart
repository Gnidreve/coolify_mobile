//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListApplicationRollbackImages200ResponseImagesInner {
  /// Returns a new [ListApplicationRollbackImages200ResponseImagesInner] instance.
  ListApplicationRollbackImages200ResponseImagesInner({
    this.tag,
    this.createdAt,
    this.isCurrent,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tag;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isCurrent;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListApplicationRollbackImages200ResponseImagesInner &&
    other.tag == tag &&
    other.createdAt == createdAt &&
    other.isCurrent == isCurrent;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (tag == null ? 0 : tag!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (isCurrent == null ? 0 : isCurrent!.hashCode);

  @override
  String toString() => 'ListApplicationRollbackImages200ResponseImagesInner[tag=$tag, createdAt=$createdAt, isCurrent=$isCurrent]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.tag != null) {
      json[r'tag'] = this.tag;
    } else {
      json[r'tag'] = null;
    }
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt;
    } else {
      json[r'created_at'] = null;
    }
    if (this.isCurrent != null) {
      json[r'is_current'] = this.isCurrent;
    } else {
      json[r'is_current'] = null;
    }
    return json;
  }

  /// Returns a new [ListApplicationRollbackImages200ResponseImagesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListApplicationRollbackImages200ResponseImagesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ListApplicationRollbackImages200ResponseImagesInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ListApplicationRollbackImages200ResponseImagesInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListApplicationRollbackImages200ResponseImagesInner(
        tag: mapValueOfType<String>(json, r'tag'),
        createdAt: mapValueOfType<String>(json, r'created_at'),
        isCurrent: mapValueOfType<bool>(json, r'is_current'),
      );
    }
    return null;
  }

  static List<ListApplicationRollbackImages200ResponseImagesInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListApplicationRollbackImages200ResponseImagesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListApplicationRollbackImages200ResponseImagesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListApplicationRollbackImages200ResponseImagesInner> mapFromJson(dynamic json) {
    final map = <String, ListApplicationRollbackImages200ResponseImagesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListApplicationRollbackImages200ResponseImagesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListApplicationRollbackImages200ResponseImagesInner-objects as value to a dart map
  static Map<String, List<ListApplicationRollbackImages200ResponseImagesInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListApplicationRollbackImages200ResponseImagesInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListApplicationRollbackImages200ResponseImagesInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

