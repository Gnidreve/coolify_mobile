//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CloneDatabaseByUuidRequest {
  /// Returns a new [CloneDatabaseByUuidRequest] instance.
  CloneDatabaseByUuidRequest({
    required this.destinationUuid,
    this.name,
    this.cloneVolumes = false,
  });

  String destinationUuid;

  Object? name;

  /// Whether to clone volume data. Needs the deploy ability.
  bool cloneVolumes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CloneDatabaseByUuidRequest &&
    other.destinationUuid == destinationUuid &&
    other.name == name &&
    other.cloneVolumes == cloneVolumes;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (destinationUuid.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (cloneVolumes.hashCode);

  @override
  String toString() => 'CloneDatabaseByUuidRequest[destinationUuid=$destinationUuid, name=$name, cloneVolumes=$cloneVolumes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'destination_uuid'] = this.destinationUuid;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'clone_volumes'] = this.cloneVolumes;
    return json;
  }

  /// Returns a new [CloneDatabaseByUuidRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CloneDatabaseByUuidRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CloneDatabaseByUuidRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CloneDatabaseByUuidRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CloneDatabaseByUuidRequest(
        destinationUuid: mapValueOfType<String>(json, r'destination_uuid')!,
        name: mapValueOfType<Object>(json, r'name'),
        cloneVolumes: mapValueOfType<bool>(json, r'clone_volumes') ?? false,
      );
    }
    return null;
  }

  static List<CloneDatabaseByUuidRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CloneDatabaseByUuidRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CloneDatabaseByUuidRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CloneDatabaseByUuidRequest> mapFromJson(dynamic json) {
    final map = <String, CloneDatabaseByUuidRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CloneDatabaseByUuidRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CloneDatabaseByUuidRequest-objects as value to a dart map
  static Map<String, List<CloneDatabaseByUuidRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CloneDatabaseByUuidRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CloneDatabaseByUuidRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'destination_uuid',
  };
}

