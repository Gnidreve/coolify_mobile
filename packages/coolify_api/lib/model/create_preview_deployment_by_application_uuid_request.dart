//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreatePreviewDeploymentByApplicationUuidRequest {
  /// Returns a new [CreatePreviewDeploymentByApplicationUuidRequest] instance.
  CreatePreviewDeploymentByApplicationUuidRequest({
    required this.pullRequestId,
    this.pullRequestHtmlUrl,
    this.gitType,
    this.commit,
    this.dockerTag,
    this.force = false,
    this.instantDeploy = true,
  });

  /// Minimum value: 1
  /// Maximum value: 2147483647
  int pullRequestId;

  Object? pullRequestHtmlUrl;

  /// Git provider that hosts the pull request. Sets the ref Coolify fetches (pull/{id}/head or merge-requests/{id}/head).
  CreatePreviewDeploymentByApplicationUuidRequestGitTypeEnum? gitType;

  /// Commit SHA to deploy. Required for Bitbucket.
  Object? commit;

  /// Docker image tag. Docker Image applications only.
  Object? dockerTag;

  /// Rebuild without cache.
  bool force;

  /// Queue a deployment. Set to false to only create the preview, for example to set its domains first.
  bool instantDeploy;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreatePreviewDeploymentByApplicationUuidRequest &&
    other.pullRequestId == pullRequestId &&
    other.pullRequestHtmlUrl == pullRequestHtmlUrl &&
    other.gitType == gitType &&
    other.commit == commit &&
    other.dockerTag == dockerTag &&
    other.force == force &&
    other.instantDeploy == instantDeploy;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (pullRequestId.hashCode) +
    (pullRequestHtmlUrl == null ? 0 : pullRequestHtmlUrl!.hashCode) +
    (gitType == null ? 0 : gitType!.hashCode) +
    (commit == null ? 0 : commit!.hashCode) +
    (dockerTag == null ? 0 : dockerTag!.hashCode) +
    (force.hashCode) +
    (instantDeploy.hashCode);

  @override
  String toString() => 'CreatePreviewDeploymentByApplicationUuidRequest[pullRequestId=$pullRequestId, pullRequestHtmlUrl=$pullRequestHtmlUrl, gitType=$gitType, commit=$commit, dockerTag=$dockerTag, force=$force, instantDeploy=$instantDeploy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'pull_request_id'] = this.pullRequestId;
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
    if (this.commit != null) {
      json[r'commit'] = this.commit;
    } else {
      json[r'commit'] = null;
    }
    if (this.dockerTag != null) {
      json[r'docker_tag'] = this.dockerTag;
    } else {
      json[r'docker_tag'] = null;
    }
      json[r'force'] = this.force;
      json[r'instant_deploy'] = this.instantDeploy;
    return json;
  }

  /// Returns a new [CreatePreviewDeploymentByApplicationUuidRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreatePreviewDeploymentByApplicationUuidRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreatePreviewDeploymentByApplicationUuidRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreatePreviewDeploymentByApplicationUuidRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreatePreviewDeploymentByApplicationUuidRequest(
        pullRequestId: mapValueOfType<int>(json, r'pull_request_id')!,
        pullRequestHtmlUrl: mapValueOfType<Object>(json, r'pull_request_html_url'),
        gitType: CreatePreviewDeploymentByApplicationUuidRequestGitTypeEnum.fromJson(json[r'git_type']),
        commit: mapValueOfType<Object>(json, r'commit'),
        dockerTag: mapValueOfType<Object>(json, r'docker_tag'),
        force: mapValueOfType<bool>(json, r'force') ?? false,
        instantDeploy: mapValueOfType<bool>(json, r'instant_deploy') ?? true,
      );
    }
    return null;
  }

  static List<CreatePreviewDeploymentByApplicationUuidRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePreviewDeploymentByApplicationUuidRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePreviewDeploymentByApplicationUuidRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreatePreviewDeploymentByApplicationUuidRequest> mapFromJson(dynamic json) {
    final map = <String, CreatePreviewDeploymentByApplicationUuidRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreatePreviewDeploymentByApplicationUuidRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreatePreviewDeploymentByApplicationUuidRequest-objects as value to a dart map
  static Map<String, List<CreatePreviewDeploymentByApplicationUuidRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreatePreviewDeploymentByApplicationUuidRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreatePreviewDeploymentByApplicationUuidRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'pull_request_id',
  };
}

/// Git provider that hosts the pull request. Sets the ref Coolify fetches (pull/{id}/head or merge-requests/{id}/head).
class CreatePreviewDeploymentByApplicationUuidRequestGitTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const CreatePreviewDeploymentByApplicationUuidRequestGitTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const github = CreatePreviewDeploymentByApplicationUuidRequestGitTypeEnum._(r'github');
  static const gitlab = CreatePreviewDeploymentByApplicationUuidRequestGitTypeEnum._(r'gitlab');
  static const gitea = CreatePreviewDeploymentByApplicationUuidRequestGitTypeEnum._(r'gitea');
  static const bitbucket = CreatePreviewDeploymentByApplicationUuidRequestGitTypeEnum._(r'bitbucket');

  /// List of all possible values in this [enum][CreatePreviewDeploymentByApplicationUuidRequestGitTypeEnum].
  static const values = <CreatePreviewDeploymentByApplicationUuidRequestGitTypeEnum>[
    github,
    gitlab,
    gitea,
    bitbucket,
  ];

  static CreatePreviewDeploymentByApplicationUuidRequestGitTypeEnum? fromJson(dynamic value) => CreatePreviewDeploymentByApplicationUuidRequestGitTypeEnumTypeTransformer().decode(value);

  static List<CreatePreviewDeploymentByApplicationUuidRequestGitTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePreviewDeploymentByApplicationUuidRequestGitTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePreviewDeploymentByApplicationUuidRequestGitTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreatePreviewDeploymentByApplicationUuidRequestGitTypeEnum] to String,
/// and [decode] dynamic data back to [CreatePreviewDeploymentByApplicationUuidRequestGitTypeEnum].
class CreatePreviewDeploymentByApplicationUuidRequestGitTypeEnumTypeTransformer {
  factory CreatePreviewDeploymentByApplicationUuidRequestGitTypeEnumTypeTransformer() => _instance ??= const CreatePreviewDeploymentByApplicationUuidRequestGitTypeEnumTypeTransformer._();

  const CreatePreviewDeploymentByApplicationUuidRequestGitTypeEnumTypeTransformer._();

  String encode(CreatePreviewDeploymentByApplicationUuidRequestGitTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreatePreviewDeploymentByApplicationUuidRequestGitTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreatePreviewDeploymentByApplicationUuidRequestGitTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'github': return CreatePreviewDeploymentByApplicationUuidRequestGitTypeEnum.github;
        case r'gitlab': return CreatePreviewDeploymentByApplicationUuidRequestGitTypeEnum.gitlab;
        case r'gitea': return CreatePreviewDeploymentByApplicationUuidRequestGitTypeEnum.gitea;
        case r'bitbucket': return CreatePreviewDeploymentByApplicationUuidRequestGitTypeEnum.bitbucket;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreatePreviewDeploymentByApplicationUuidRequestGitTypeEnumTypeTransformer] instance.
  static CreatePreviewDeploymentByApplicationUuidRequestGitTypeEnumTypeTransformer? _instance;
}


