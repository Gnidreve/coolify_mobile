//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateScheduledTaskByApplicationUuidRequest {
  /// Returns a new [CreateScheduledTaskByApplicationUuidRequest] instance.
  CreateScheduledTaskByApplicationUuidRequest({
    required this.name,
    required this.command,
    required this.frequency,
    this.container,
    this.timeout = 300,
    this.enabled = true,
  });

  /// The name of the scheduled task.
  String name;

  /// The command to execute.
  String command;

  /// The frequency of the scheduled task.
  String frequency;

  /// The container where the command should be executed.
  String? container;

  /// The timeout of the scheduled task in seconds.
  ///
  /// Maximum value: 36000
  int timeout;

  /// The flag to indicate if the scheduled task is enabled. An enabled task requires the deploy ability.
  bool enabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateScheduledTaskByApplicationUuidRequest &&
    other.name == name &&
    other.command == command &&
    other.frequency == frequency &&
    other.container == container &&
    other.timeout == timeout &&
    other.enabled == enabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (command.hashCode) +
    (frequency.hashCode) +
    (container == null ? 0 : container!.hashCode) +
    (timeout.hashCode) +
    (enabled.hashCode);

  @override
  String toString() => 'CreateScheduledTaskByApplicationUuidRequest[name=$name, command=$command, frequency=$frequency, container=$container, timeout=$timeout, enabled=$enabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'command'] = this.command;
      json[r'frequency'] = this.frequency;
    if (this.container != null) {
      json[r'container'] = this.container;
    } else {
      json[r'container'] = null;
    }
      json[r'timeout'] = this.timeout;
      json[r'enabled'] = this.enabled;
    return json;
  }

  /// Returns a new [CreateScheduledTaskByApplicationUuidRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateScheduledTaskByApplicationUuidRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateScheduledTaskByApplicationUuidRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateScheduledTaskByApplicationUuidRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateScheduledTaskByApplicationUuidRequest(
        name: mapValueOfType<String>(json, r'name')!,
        command: mapValueOfType<String>(json, r'command')!,
        frequency: mapValueOfType<String>(json, r'frequency')!,
        container: mapValueOfType<String>(json, r'container'),
        timeout: mapValueOfType<int>(json, r'timeout') ?? 300,
        enabled: mapValueOfType<bool>(json, r'enabled') ?? true,
      );
    }
    return null;
  }

  static List<CreateScheduledTaskByApplicationUuidRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateScheduledTaskByApplicationUuidRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateScheduledTaskByApplicationUuidRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateScheduledTaskByApplicationUuidRequest> mapFromJson(dynamic json) {
    final map = <String, CreateScheduledTaskByApplicationUuidRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateScheduledTaskByApplicationUuidRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateScheduledTaskByApplicationUuidRequest-objects as value to a dart map
  static Map<String, List<CreateScheduledTaskByApplicationUuidRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateScheduledTaskByApplicationUuidRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateScheduledTaskByApplicationUuidRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'command',
    'frequency',
  };
}

