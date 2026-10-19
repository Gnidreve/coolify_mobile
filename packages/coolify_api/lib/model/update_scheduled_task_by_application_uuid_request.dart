//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateScheduledTaskByApplicationUuidRequest {
  /// Returns a new [UpdateScheduledTaskByApplicationUuidRequest] instance.
  UpdateScheduledTaskByApplicationUuidRequest({
    this.name,
    this.command,
    this.frequency,
    this.container,
    this.timeout = 300,
    this.enabled = true,
  });

  /// The name of the scheduled task.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// The command to execute.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? command;

  /// The frequency of the scheduled task.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? frequency;

  /// The container where the command should be executed.
  String? container;

  /// The timeout of the scheduled task in seconds.
  ///
  /// Maximum value: 36000
  int timeout;

  /// The flag to indicate if the scheduled task is enabled. An enabled task requires the deploy ability.
  bool enabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateScheduledTaskByApplicationUuidRequest &&
    other.name == name &&
    other.command == command &&
    other.frequency == frequency &&
    other.container == container &&
    other.timeout == timeout &&
    other.enabled == enabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (command == null ? 0 : command!.hashCode) +
    (frequency == null ? 0 : frequency!.hashCode) +
    (container == null ? 0 : container!.hashCode) +
    (timeout.hashCode) +
    (enabled.hashCode);

  @override
  String toString() => 'UpdateScheduledTaskByApplicationUuidRequest[name=$name, command=$command, frequency=$frequency, container=$container, timeout=$timeout, enabled=$enabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.command != null) {
      json[r'command'] = this.command;
    } else {
      json[r'command'] = null;
    }
    if (this.frequency != null) {
      json[r'frequency'] = this.frequency;
    } else {
      json[r'frequency'] = null;
    }
    if (this.container != null) {
      json[r'container'] = this.container;
    } else {
      json[r'container'] = null;
    }
      json[r'timeout'] = this.timeout;
      json[r'enabled'] = this.enabled;
    return json;
  }

  /// Returns a new [UpdateScheduledTaskByApplicationUuidRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateScheduledTaskByApplicationUuidRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateScheduledTaskByApplicationUuidRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateScheduledTaskByApplicationUuidRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateScheduledTaskByApplicationUuidRequest(
        name: mapValueOfType<String>(json, r'name'),
        command: mapValueOfType<String>(json, r'command'),
        frequency: mapValueOfType<String>(json, r'frequency'),
        container: mapValueOfType<String>(json, r'container'),
        timeout: mapValueOfType<int>(json, r'timeout') ?? 300,
        enabled: mapValueOfType<bool>(json, r'enabled') ?? true,
      );
    }
    return null;
  }

  static List<UpdateScheduledTaskByApplicationUuidRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateScheduledTaskByApplicationUuidRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateScheduledTaskByApplicationUuidRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateScheduledTaskByApplicationUuidRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateScheduledTaskByApplicationUuidRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateScheduledTaskByApplicationUuidRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateScheduledTaskByApplicationUuidRequest-objects as value to a dart map
  static Map<String, List<UpdateScheduledTaskByApplicationUuidRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateScheduledTaskByApplicationUuidRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateScheduledTaskByApplicationUuidRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

