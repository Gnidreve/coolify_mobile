//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateHetznerServer201Response {
  /// Returns a new [CreateHetznerServer201Response] instance.
  CreateHetznerServer201Response({
    this.uuid,
    this.hetznerServerId,
    this.ip,
  });

  /// The UUID of the server.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uuid;

  /// The Hetzner server ID.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? hetznerServerId;

  /// The server IP address.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ip;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateHetznerServer201Response &&
    other.uuid == uuid &&
    other.hetznerServerId == hetznerServerId &&
    other.ip == ip;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (uuid == null ? 0 : uuid!.hashCode) +
    (hetznerServerId == null ? 0 : hetznerServerId!.hashCode) +
    (ip == null ? 0 : ip!.hashCode);

  @override
  String toString() => 'CreateHetznerServer201Response[uuid=$uuid, hetznerServerId=$hetznerServerId, ip=$ip]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.uuid != null) {
      json[r'uuid'] = this.uuid;
    } else {
      json[r'uuid'] = null;
    }
    if (this.hetznerServerId != null) {
      json[r'hetzner_server_id'] = this.hetznerServerId;
    } else {
      json[r'hetzner_server_id'] = null;
    }
    if (this.ip != null) {
      json[r'ip'] = this.ip;
    } else {
      json[r'ip'] = null;
    }
    return json;
  }

  /// Returns a new [CreateHetznerServer201Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateHetznerServer201Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateHetznerServer201Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateHetznerServer201Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateHetznerServer201Response(
        uuid: mapValueOfType<String>(json, r'uuid'),
        hetznerServerId: mapValueOfType<int>(json, r'hetzner_server_id'),
        ip: mapValueOfType<String>(json, r'ip'),
      );
    }
    return null;
  }

  static List<CreateHetznerServer201Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateHetznerServer201Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateHetznerServer201Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateHetznerServer201Response> mapFromJson(dynamic json) {
    final map = <String, CreateHetznerServer201Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateHetznerServer201Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateHetznerServer201Response-objects as value to a dart map
  static Map<String, List<CreateHetznerServer201Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateHetznerServer201Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateHetznerServer201Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

