//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Team {
  /// Returns a new [Team] instance.
  Team({
    this.id,
    this.name,
    this.description,
    this.personalTeam,
    this.createdAt,
    this.updatedAt,
    this.showBoarding,
    this.customServerLimit,
    this.isBuildServerFallbackEnabled,
    this.members = const [],
  });

  /// The unique identifier of the team.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// The name of the team.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// The description of the team.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Whether the team is personal or not.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? personalTeam;

  /// The date and time the team was created.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  /// The date and time the team was last updated.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedAt;

  /// Whether to show the boarding screen or not.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? showBoarding;

  /// The custom server limit.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? customServerLimit;

  /// Whether deployments can fall back to the deployment server when no usable dedicated build server is available.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isBuildServerFallbackEnabled;

  /// The members of the team.
  List<User> members;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Team &&
    other.id == id &&
    other.name == name &&
    other.description == description &&
    other.personalTeam == personalTeam &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.showBoarding == showBoarding &&
    other.customServerLimit == customServerLimit &&
    other.isBuildServerFallbackEnabled == isBuildServerFallbackEnabled &&
    _deepEquality.equals(other.members, members);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (personalTeam == null ? 0 : personalTeam!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (showBoarding == null ? 0 : showBoarding!.hashCode) +
    (customServerLimit == null ? 0 : customServerLimit!.hashCode) +
    (isBuildServerFallbackEnabled == null ? 0 : isBuildServerFallbackEnabled!.hashCode) +
    (members.hashCode);

  @override
  String toString() => 'Team[id=$id, name=$name, description=$description, personalTeam=$personalTeam, createdAt=$createdAt, updatedAt=$updatedAt, showBoarding=$showBoarding, customServerLimit=$customServerLimit, isBuildServerFallbackEnabled=$isBuildServerFallbackEnabled, members=$members]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.personalTeam != null) {
      json[r'personal_team'] = this.personalTeam;
    } else {
      json[r'personal_team'] = null;
    }
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt;
    } else {
      json[r'created_at'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updated_at'] = this.updatedAt;
    } else {
      json[r'updated_at'] = null;
    }
    if (this.showBoarding != null) {
      json[r'show_boarding'] = this.showBoarding;
    } else {
      json[r'show_boarding'] = null;
    }
    if (this.customServerLimit != null) {
      json[r'custom_server_limit'] = this.customServerLimit;
    } else {
      json[r'custom_server_limit'] = null;
    }
    if (this.isBuildServerFallbackEnabled != null) {
      json[r'is_build_server_fallback_enabled'] = this.isBuildServerFallbackEnabled;
    } else {
      json[r'is_build_server_fallback_enabled'] = null;
    }
      json[r'members'] = this.members;
    return json;
  }

  /// Returns a new [Team] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Team? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Team[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Team[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Team(
        id: mapValueOfType<int>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        personalTeam: mapValueOfType<bool>(json, r'personal_team'),
        createdAt: mapValueOfType<String>(json, r'created_at'),
        updatedAt: mapValueOfType<String>(json, r'updated_at'),
        showBoarding: mapValueOfType<bool>(json, r'show_boarding'),
        customServerLimit: mapValueOfType<String>(json, r'custom_server_limit'),
        isBuildServerFallbackEnabled: mapValueOfType<bool>(json, r'is_build_server_fallback_enabled'),
        members: User.listFromJson(json[r'members']),
      );
    }
    return null;
  }

  static List<Team> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Team>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Team.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Team> mapFromJson(dynamic json) {
    final map = <String, Team>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Team.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Team-objects as value to a dart map
  static Map<String, List<Team>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Team>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Team.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

