//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MigrateApplicationByUuidRequest {
  /// Returns a new [MigrateApplicationByUuidRequest] instance.
  MigrateApplicationByUuidRequest({
    required this.destinationUuid,
    this.migrateVolumes = true,
  });

  /// UUID of the target destination.
  String destinationUuid;

  /// Whether to transfer persistent volume data when migrating across servers.
  bool migrateVolumes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MigrateApplicationByUuidRequest &&
    other.destinationUuid == destinationUuid &&
    other.migrateVolumes == migrateVolumes;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (destinationUuid.hashCode) +
    (migrateVolumes.hashCode);

  @override
  String toString() => 'MigrateApplicationByUuidRequest[destinationUuid=$destinationUuid, migrateVolumes=$migrateVolumes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'destination_uuid'] = this.destinationUuid;
      json[r'migrate_volumes'] = this.migrateVolumes;
    return json;
  }

  /// Returns a new [MigrateApplicationByUuidRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MigrateApplicationByUuidRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MigrateApplicationByUuidRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MigrateApplicationByUuidRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MigrateApplicationByUuidRequest(
        destinationUuid: mapValueOfType<String>(json, r'destination_uuid')!,
        migrateVolumes: mapValueOfType<bool>(json, r'migrate_volumes') ?? true,
      );
    }
    return null;
  }

  static List<MigrateApplicationByUuidRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MigrateApplicationByUuidRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MigrateApplicationByUuidRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MigrateApplicationByUuidRequest> mapFromJson(dynamic json) {
    final map = <String, MigrateApplicationByUuidRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MigrateApplicationByUuidRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MigrateApplicationByUuidRequest-objects as value to a dart map
  static Map<String, List<MigrateApplicationByUuidRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MigrateApplicationByUuidRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MigrateApplicationByUuidRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'destination_uuid',
  };
}

