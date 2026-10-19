//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApplicationDeploymentQueue {
  /// Returns a new [ApplicationDeploymentQueue] instance.
  ApplicationDeploymentQueue({
    this.id,
    this.applicationId,
    this.deploymentUuid,
    this.pullRequestId,
    this.dockerRegistryImageTag,
    this.configurationHash,
    this.configurationSnapshot = const {},
    this.configurationDiff = const {},
    this.forceRebuild,
    this.commit,
    this.status,
    this.isWebhook,
    this.isApi,
    this.createdAt,
    this.updatedAt,
    this.logs,
    this.currentProcessId,
    this.restartOnly,
    this.gitType,
    this.serverId,
    this.applicationName,
    this.serverName,
    this.deploymentUrl,
    this.destinationId,
    this.onlyThisServer,
    this.parentDeploymentUuid,
    this.rollback,
    this.commitMessage,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? applicationId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deploymentUuid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pullRequestId;

  String? dockerRegistryImageTag;

  String? configurationHash;

  Map<String, Object>? configurationSnapshot;

  Map<String, Object>? configurationDiff;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? forceRebuild;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? commit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isWebhook;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isApi;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? logs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currentProcessId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? restartOnly;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gitType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? serverId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? applicationName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serverName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deploymentUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? destinationId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? onlyThisServer;

  String? parentDeploymentUuid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? rollback;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? commitMessage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ApplicationDeploymentQueue &&
    other.id == id &&
    other.applicationId == applicationId &&
    other.deploymentUuid == deploymentUuid &&
    other.pullRequestId == pullRequestId &&
    other.dockerRegistryImageTag == dockerRegistryImageTag &&
    other.configurationHash == configurationHash &&
    _deepEquality.equals(other.configurationSnapshot, configurationSnapshot) &&
    _deepEquality.equals(other.configurationDiff, configurationDiff) &&
    other.forceRebuild == forceRebuild &&
    other.commit == commit &&
    other.status == status &&
    other.isWebhook == isWebhook &&
    other.isApi == isApi &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.logs == logs &&
    other.currentProcessId == currentProcessId &&
    other.restartOnly == restartOnly &&
    other.gitType == gitType &&
    other.serverId == serverId &&
    other.applicationName == applicationName &&
    other.serverName == serverName &&
    other.deploymentUrl == deploymentUrl &&
    other.destinationId == destinationId &&
    other.onlyThisServer == onlyThisServer &&
    other.parentDeploymentUuid == parentDeploymentUuid &&
    other.rollback == rollback &&
    other.commitMessage == commitMessage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (applicationId == null ? 0 : applicationId!.hashCode) +
    (deploymentUuid == null ? 0 : deploymentUuid!.hashCode) +
    (pullRequestId == null ? 0 : pullRequestId!.hashCode) +
    (dockerRegistryImageTag == null ? 0 : dockerRegistryImageTag!.hashCode) +
    (configurationHash == null ? 0 : configurationHash!.hashCode) +
    (configurationSnapshot == null ? 0 : configurationSnapshot!.hashCode) +
    (configurationDiff == null ? 0 : configurationDiff!.hashCode) +
    (forceRebuild == null ? 0 : forceRebuild!.hashCode) +
    (commit == null ? 0 : commit!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (isWebhook == null ? 0 : isWebhook!.hashCode) +
    (isApi == null ? 0 : isApi!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (logs == null ? 0 : logs!.hashCode) +
    (currentProcessId == null ? 0 : currentProcessId!.hashCode) +
    (restartOnly == null ? 0 : restartOnly!.hashCode) +
    (gitType == null ? 0 : gitType!.hashCode) +
    (serverId == null ? 0 : serverId!.hashCode) +
    (applicationName == null ? 0 : applicationName!.hashCode) +
    (serverName == null ? 0 : serverName!.hashCode) +
    (deploymentUrl == null ? 0 : deploymentUrl!.hashCode) +
    (destinationId == null ? 0 : destinationId!.hashCode) +
    (onlyThisServer == null ? 0 : onlyThisServer!.hashCode) +
    (parentDeploymentUuid == null ? 0 : parentDeploymentUuid!.hashCode) +
    (rollback == null ? 0 : rollback!.hashCode) +
    (commitMessage == null ? 0 : commitMessage!.hashCode);

  @override
  String toString() => 'ApplicationDeploymentQueue[id=$id, applicationId=$applicationId, deploymentUuid=$deploymentUuid, pullRequestId=$pullRequestId, dockerRegistryImageTag=$dockerRegistryImageTag, configurationHash=$configurationHash, configurationSnapshot=$configurationSnapshot, configurationDiff=$configurationDiff, forceRebuild=$forceRebuild, commit=$commit, status=$status, isWebhook=$isWebhook, isApi=$isApi, createdAt=$createdAt, updatedAt=$updatedAt, logs=$logs, currentProcessId=$currentProcessId, restartOnly=$restartOnly, gitType=$gitType, serverId=$serverId, applicationName=$applicationName, serverName=$serverName, deploymentUrl=$deploymentUrl, destinationId=$destinationId, onlyThisServer=$onlyThisServer, parentDeploymentUuid=$parentDeploymentUuid, rollback=$rollback, commitMessage=$commitMessage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.applicationId != null) {
      json[r'application_id'] = this.applicationId;
    } else {
      json[r'application_id'] = null;
    }
    if (this.deploymentUuid != null) {
      json[r'deployment_uuid'] = this.deploymentUuid;
    } else {
      json[r'deployment_uuid'] = null;
    }
    if (this.pullRequestId != null) {
      json[r'pull_request_id'] = this.pullRequestId;
    } else {
      json[r'pull_request_id'] = null;
    }
    if (this.dockerRegistryImageTag != null) {
      json[r'docker_registry_image_tag'] = this.dockerRegistryImageTag;
    } else {
      json[r'docker_registry_image_tag'] = null;
    }
    if (this.configurationHash != null) {
      json[r'configuration_hash'] = this.configurationHash;
    } else {
      json[r'configuration_hash'] = null;
    }
    if (this.configurationSnapshot != null) {
      json[r'configuration_snapshot'] = this.configurationSnapshot;
    } else {
      json[r'configuration_snapshot'] = null;
    }
    if (this.configurationDiff != null) {
      json[r'configuration_diff'] = this.configurationDiff;
    } else {
      json[r'configuration_diff'] = null;
    }
    if (this.forceRebuild != null) {
      json[r'force_rebuild'] = this.forceRebuild;
    } else {
      json[r'force_rebuild'] = null;
    }
    if (this.commit != null) {
      json[r'commit'] = this.commit;
    } else {
      json[r'commit'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.isWebhook != null) {
      json[r'is_webhook'] = this.isWebhook;
    } else {
      json[r'is_webhook'] = null;
    }
    if (this.isApi != null) {
      json[r'is_api'] = this.isApi;
    } else {
      json[r'is_api'] = null;
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
    if (this.logs != null) {
      json[r'logs'] = this.logs;
    } else {
      json[r'logs'] = null;
    }
    if (this.currentProcessId != null) {
      json[r'current_process_id'] = this.currentProcessId;
    } else {
      json[r'current_process_id'] = null;
    }
    if (this.restartOnly != null) {
      json[r'restart_only'] = this.restartOnly;
    } else {
      json[r'restart_only'] = null;
    }
    if (this.gitType != null) {
      json[r'git_type'] = this.gitType;
    } else {
      json[r'git_type'] = null;
    }
    if (this.serverId != null) {
      json[r'server_id'] = this.serverId;
    } else {
      json[r'server_id'] = null;
    }
    if (this.applicationName != null) {
      json[r'application_name'] = this.applicationName;
    } else {
      json[r'application_name'] = null;
    }
    if (this.serverName != null) {
      json[r'server_name'] = this.serverName;
    } else {
      json[r'server_name'] = null;
    }
    if (this.deploymentUrl != null) {
      json[r'deployment_url'] = this.deploymentUrl;
    } else {
      json[r'deployment_url'] = null;
    }
    if (this.destinationId != null) {
      json[r'destination_id'] = this.destinationId;
    } else {
      json[r'destination_id'] = null;
    }
    if (this.onlyThisServer != null) {
      json[r'only_this_server'] = this.onlyThisServer;
    } else {
      json[r'only_this_server'] = null;
    }
    if (this.parentDeploymentUuid != null) {
      json[r'parent_deployment_uuid'] = this.parentDeploymentUuid;
    } else {
      json[r'parent_deployment_uuid'] = null;
    }
    if (this.rollback != null) {
      json[r'rollback'] = this.rollback;
    } else {
      json[r'rollback'] = null;
    }
    if (this.commitMessage != null) {
      json[r'commit_message'] = this.commitMessage;
    } else {
      json[r'commit_message'] = null;
    }
    return json;
  }

  /// Returns a new [ApplicationDeploymentQueue] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApplicationDeploymentQueue? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ApplicationDeploymentQueue[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ApplicationDeploymentQueue[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ApplicationDeploymentQueue(
        id: mapValueOfType<int>(json, r'id'),
        applicationId: mapValueOfType<String>(json, r'application_id'),
        deploymentUuid: mapValueOfType<String>(json, r'deployment_uuid'),
        pullRequestId: mapValueOfType<int>(json, r'pull_request_id'),
        dockerRegistryImageTag: mapValueOfType<String>(json, r'docker_registry_image_tag'),
        configurationHash: mapValueOfType<String>(json, r'configuration_hash'),
        configurationSnapshot: mapCastOfType<String, Object>(json, r'configuration_snapshot') ?? const {},
        configurationDiff: mapCastOfType<String, Object>(json, r'configuration_diff') ?? const {},
        forceRebuild: mapValueOfType<bool>(json, r'force_rebuild'),
        commit: mapValueOfType<String>(json, r'commit'),
        status: mapValueOfType<String>(json, r'status'),
        isWebhook: mapValueOfType<bool>(json, r'is_webhook'),
        isApi: mapValueOfType<bool>(json, r'is_api'),
        createdAt: mapValueOfType<String>(json, r'created_at'),
        updatedAt: mapValueOfType<String>(json, r'updated_at'),
        logs: mapValueOfType<String>(json, r'logs'),
        currentProcessId: mapValueOfType<String>(json, r'current_process_id'),
        restartOnly: mapValueOfType<bool>(json, r'restart_only'),
        gitType: mapValueOfType<String>(json, r'git_type'),
        serverId: mapValueOfType<int>(json, r'server_id'),
        applicationName: mapValueOfType<String>(json, r'application_name'),
        serverName: mapValueOfType<String>(json, r'server_name'),
        deploymentUrl: mapValueOfType<String>(json, r'deployment_url'),
        destinationId: mapValueOfType<String>(json, r'destination_id'),
        onlyThisServer: mapValueOfType<bool>(json, r'only_this_server'),
        parentDeploymentUuid: mapValueOfType<String>(json, r'parent_deployment_uuid'),
        rollback: mapValueOfType<bool>(json, r'rollback'),
        commitMessage: mapValueOfType<String>(json, r'commit_message'),
      );
    }
    return null;
  }

  static List<ApplicationDeploymentQueue> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ApplicationDeploymentQueue>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApplicationDeploymentQueue.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApplicationDeploymentQueue> mapFromJson(dynamic json) {
    final map = <String, ApplicationDeploymentQueue>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApplicationDeploymentQueue.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApplicationDeploymentQueue-objects as value to a dart map
  static Map<String, List<ApplicationDeploymentQueue>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ApplicationDeploymentQueue>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApplicationDeploymentQueue.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

