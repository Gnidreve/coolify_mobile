//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListAuditEvents200Response {
  /// Returns a new [ListAuditEvents200Response] instance.
  ListAuditEvents200Response({
    this.currentPage,
    this.data = const [],
    this.perPage,
    this.lastPage,
    this.total,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? currentPage;

  List<ListAuditEvents200ResponseDataInner> data;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? perPage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? lastPage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListAuditEvents200Response &&
    other.currentPage == currentPage &&
    _deepEquality.equals(other.data, data) &&
    other.perPage == perPage &&
    other.lastPage == lastPage &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (currentPage == null ? 0 : currentPage!.hashCode) +
    (data.hashCode) +
    (perPage == null ? 0 : perPage!.hashCode) +
    (lastPage == null ? 0 : lastPage!.hashCode) +
    (total == null ? 0 : total!.hashCode);

  @override
  String toString() => 'ListAuditEvents200Response[currentPage=$currentPage, data=$data, perPage=$perPage, lastPage=$lastPage, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.currentPage != null) {
      json[r'current_page'] = this.currentPage;
    } else {
      json[r'current_page'] = null;
    }
      json[r'data'] = this.data;
    if (this.perPage != null) {
      json[r'per_page'] = this.perPage;
    } else {
      json[r'per_page'] = null;
    }
    if (this.lastPage != null) {
      json[r'last_page'] = this.lastPage;
    } else {
      json[r'last_page'] = null;
    }
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    return json;
  }

  /// Returns a new [ListAuditEvents200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListAuditEvents200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ListAuditEvents200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ListAuditEvents200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListAuditEvents200Response(
        currentPage: mapValueOfType<int>(json, r'current_page'),
        data: ListAuditEvents200ResponseDataInner.listFromJson(json[r'data']),
        perPage: mapValueOfType<int>(json, r'per_page'),
        lastPage: mapValueOfType<int>(json, r'last_page'),
        total: mapValueOfType<int>(json, r'total'),
      );
    }
    return null;
  }

  static List<ListAuditEvents200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListAuditEvents200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListAuditEvents200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListAuditEvents200Response> mapFromJson(dynamic json) {
    final map = <String, ListAuditEvents200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListAuditEvents200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListAuditEvents200Response-objects as value to a dart map
  static Map<String, List<ListAuditEvents200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListAuditEvents200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListAuditEvents200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

