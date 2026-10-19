//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListAuditEvents200ResponseDataInner {
  /// Returns a new [ListAuditEvents200ResponseDataInner] instance.
  ListAuditEvents200ResponseDataInner({
    this.id,
    this.teamId,
    this.event,
    this.source_,
    this.action,
    this.level,
    this.actorType,
    this.actorId,
    this.actorName,
    this.resourceType,
    this.resourceUuid,
    this.resourceName,
    this.description,
    this.createdAt,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  int? teamId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? event;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? action;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? level;

  String? actorType;

  int? actorId;

  String? actorName;

  String? resourceType;

  String? resourceUuid;

  String? resourceName;

  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListAuditEvents200ResponseDataInner &&
    other.id == id &&
    other.teamId == teamId &&
    other.event == event &&
    other.source_ == source_ &&
    other.action == action &&
    other.level == level &&
    other.actorType == actorType &&
    other.actorId == actorId &&
    other.actorName == actorName &&
    other.resourceType == resourceType &&
    other.resourceUuid == resourceUuid &&
    other.resourceName == resourceName &&
    other.description == description &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (teamId == null ? 0 : teamId!.hashCode) +
    (event == null ? 0 : event!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (action == null ? 0 : action!.hashCode) +
    (level == null ? 0 : level!.hashCode) +
    (actorType == null ? 0 : actorType!.hashCode) +
    (actorId == null ? 0 : actorId!.hashCode) +
    (actorName == null ? 0 : actorName!.hashCode) +
    (resourceType == null ? 0 : resourceType!.hashCode) +
    (resourceUuid == null ? 0 : resourceUuid!.hashCode) +
    (resourceName == null ? 0 : resourceName!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode);

  @override
  String toString() => 'ListAuditEvents200ResponseDataInner[id=$id, teamId=$teamId, event=$event, source_=$source_, action=$action, level=$level, actorType=$actorType, actorId=$actorId, actorName=$actorName, resourceType=$resourceType, resourceUuid=$resourceUuid, resourceName=$resourceName, description=$description, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.teamId != null) {
      json[r'team_id'] = this.teamId;
    } else {
      json[r'team_id'] = null;
    }
    if (this.event != null) {
      json[r'event'] = this.event;
    } else {
      json[r'event'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.action != null) {
      json[r'action'] = this.action;
    } else {
      json[r'action'] = null;
    }
    if (this.level != null) {
      json[r'level'] = this.level;
    } else {
      json[r'level'] = null;
    }
    if (this.actorType != null) {
      json[r'actor_type'] = this.actorType;
    } else {
      json[r'actor_type'] = null;
    }
    if (this.actorId != null) {
      json[r'actor_id'] = this.actorId;
    } else {
      json[r'actor_id'] = null;
    }
    if (this.actorName != null) {
      json[r'actor_name'] = this.actorName;
    } else {
      json[r'actor_name'] = null;
    }
    if (this.resourceType != null) {
      json[r'resource_type'] = this.resourceType;
    } else {
      json[r'resource_type'] = null;
    }
    if (this.resourceUuid != null) {
      json[r'resource_uuid'] = this.resourceUuid;
    } else {
      json[r'resource_uuid'] = null;
    }
    if (this.resourceName != null) {
      json[r'resource_name'] = this.resourceName;
    } else {
      json[r'resource_name'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    return json;
  }

  /// Returns a new [ListAuditEvents200ResponseDataInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListAuditEvents200ResponseDataInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ListAuditEvents200ResponseDataInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ListAuditEvents200ResponseDataInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListAuditEvents200ResponseDataInner(
        id: mapValueOfType<int>(json, r'id'),
        teamId: mapValueOfType<int>(json, r'team_id'),
        event: mapValueOfType<String>(json, r'event'),
        source_: mapValueOfType<String>(json, r'source'),
        action: mapValueOfType<String>(json, r'action'),
        level: mapValueOfType<String>(json, r'level'),
        actorType: mapValueOfType<String>(json, r'actor_type'),
        actorId: mapValueOfType<int>(json, r'actor_id'),
        actorName: mapValueOfType<String>(json, r'actor_name'),
        resourceType: mapValueOfType<String>(json, r'resource_type'),
        resourceUuid: mapValueOfType<String>(json, r'resource_uuid'),
        resourceName: mapValueOfType<String>(json, r'resource_name'),
        description: mapValueOfType<String>(json, r'description'),
        createdAt: mapDateTime(json, r'created_at', r''),
      );
    }
    return null;
  }

  static List<ListAuditEvents200ResponseDataInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListAuditEvents200ResponseDataInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListAuditEvents200ResponseDataInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListAuditEvents200ResponseDataInner> mapFromJson(dynamic json) {
    final map = <String, ListAuditEvents200ResponseDataInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListAuditEvents200ResponseDataInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListAuditEvents200ResponseDataInner-objects as value to a dart map
  static Map<String, List<ListAuditEvents200ResponseDataInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListAuditEvents200ResponseDataInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListAuditEvents200ResponseDataInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

