//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApplicationPreview {
  /// Returns a new [ApplicationPreview] instance.
  ApplicationPreview({
    this.uuid,
    this.pullRequestId,
    this.pullRequestHtmlUrl,
    this.gitType,
    this.status,
    this.domains,
    this.dockerComposeDomains = const [],
    this.domainPortOverrides,
    this.dockerRegistryImageTag,
    this.lastOnlineAt,
    this.createdAt,
    this.updatedAt,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uuid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pullRequestId;

  Object? pullRequestHtmlUrl;

  Object? gitType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  Object? domains;

  List<ApplicationPreviewDockerComposeDomainsInner> dockerComposeDomains;

  Object? domainPortOverrides;

  Object? dockerRegistryImageTag;

  Object? lastOnlineAt;

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
  String? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ApplicationPreview &&
    other.uuid == uuid &&
    other.pullRequestId == pullRequestId &&
    other.pullRequestHtmlUrl == pullRequestHtmlUrl &&
    other.gitType == gitType &&
    other.status == status &&
    other.domains == domains &&
    _deepEquality.equals(other.dockerComposeDomains, dockerComposeDomains) &&
    other.domainPortOverrides == domainPortOverrides &&
    other.dockerRegistryImageTag == dockerRegistryImageTag &&
    other.lastOnlineAt == lastOnlineAt &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (uuid == null ? 0 : uuid!.hashCode) +
    (pullRequestId == null ? 0 : pullRequestId!.hashCode) +
    (pullRequestHtmlUrl == null ? 0 : pullRequestHtmlUrl!.hashCode) +
    (gitType == null ? 0 : gitType!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (domains == null ? 0 : domains!.hashCode) +
    (dockerComposeDomains.hashCode) +
    (domainPortOverrides == null ? 0 : domainPortOverrides!.hashCode) +
    (dockerRegistryImageTag == null ? 0 : dockerRegistryImageTag!.hashCode) +
    (lastOnlineAt == null ? 0 : lastOnlineAt!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'ApplicationPreview[uuid=$uuid, pullRequestId=$pullRequestId, pullRequestHtmlUrl=$pullRequestHtmlUrl, gitType=$gitType, status=$status, domains=$domains, dockerComposeDomains=$dockerComposeDomains, domainPortOverrides=$domainPortOverrides, dockerRegistryImageTag=$dockerRegistryImageTag, lastOnlineAt=$lastOnlineAt, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.uuid != null) {
      json[r'uuid'] = this.uuid;
    } else {
      json[r'uuid'] = null;
    }
    if (this.pullRequestId != null) {
      json[r'pull_request_id'] = this.pullRequestId;
    } else {
      json[r'pull_request_id'] = null;
    }
    if (this.pullRequestHtmlUrl != null) {
      json[r'pull_request_html_url'] = this.pullRequestHtmlUrl;
    } else {
      json[r'pull_request_html_url'] = null;
    }
    if (this.gitType != null) {
      json[r'git_type'] = this.gitType;
    } else {
      json[r'git_type'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.domains != null) {
      json[r'domains'] = this.domains;
    } else {
      json[r'domains'] = null;
    }
      json[r'docker_compose_domains'] = this.dockerComposeDomains;
    if (this.domainPortOverrides != null) {
      json[r'domain_port_overrides'] = this.domainPortOverrides;
    } else {
      json[r'domain_port_overrides'] = null;
    }
    if (this.dockerRegistryImageTag != null) {
      json[r'docker_registry_image_tag'] = this.dockerRegistryImageTag;
    } else {
      json[r'docker_registry_image_tag'] = null;
    }
    if (this.lastOnlineAt != null) {
      json[r'last_online_at'] = this.lastOnlineAt;
    } else {
      json[r'last_online_at'] = null;
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
    return json;
  }

  /// Returns a new [ApplicationPreview] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApplicationPreview? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ApplicationPreview[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ApplicationPreview[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ApplicationPreview(
        uuid: mapValueOfType<String>(json, r'uuid'),
        pullRequestId: mapValueOfType<int>(json, r'pull_request_id'),
        pullRequestHtmlUrl: mapValueOfType<Object>(json, r'pull_request_html_url'),
        gitType: mapValueOfType<Object>(json, r'git_type'),
        status: mapValueOfType<String>(json, r'status'),
        domains: mapValueOfType<Object>(json, r'domains'),
        dockerComposeDomains: ApplicationPreviewDockerComposeDomainsInner.listFromJson(json[r'docker_compose_domains']),
        domainPortOverrides: mapValueOfType<Object>(json, r'domain_port_overrides'),
        dockerRegistryImageTag: mapValueOfType<Object>(json, r'docker_registry_image_tag'),
        lastOnlineAt: mapValueOfType<Object>(json, r'last_online_at'),
        createdAt: mapValueOfType<String>(json, r'created_at'),
        updatedAt: mapValueOfType<String>(json, r'updated_at'),
      );
    }
    return null;
  }

  static List<ApplicationPreview> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ApplicationPreview>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApplicationPreview.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApplicationPreview> mapFromJson(dynamic json) {
    final map = <String, ApplicationPreview>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApplicationPreview.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApplicationPreview-objects as value to a dart map
  static Map<String, List<ApplicationPreview>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ApplicationPreview>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApplicationPreview.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

