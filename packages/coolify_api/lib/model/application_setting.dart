//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApplicationSetting {
  /// Returns a new [ApplicationSetting] instance.
  ApplicationSetting({
    this.isStatic,
    this.isGitSubmodulesEnabled,
    this.isGitLfsEnabled,
    this.isAutoDeployEnabled,
    this.isForceHttpsEnabled,
    this.isDebugEnabled,
    this.isPreviewDeploymentsEnabled,
    this.isLogDrainEnabled,
    this.isGpuEnabled,
    this.gpuDriver,
    this.gpuCount,
    this.gpuDeviceIds,
    this.gpuOptions,
    this.isIncludeTimestamps,
    this.isSwarmOnlyWorkerNodes,
    this.isRawComposeDeploymentEnabled,
    this.isBuildServerEnabled,
    this.isConsistentContainerNameEnabled,
    this.isGzipEnabled,
    this.traefikCertificateResolver,
    this.isStripprefixEnabled,
    this.connectToDockerNetwork,
    this.customInternalName,
    this.customContainerNamePrefix,
    this.isContainerLabelEscapeEnabled,
    this.isEnvSortingEnabled,
    this.includeCoolifyDefaultVariables,
    this.isContainerLabelReadonlyEnabled,
    this.isPreserveRepositoryEnabled,
    this.disableBuildCache,
    this.isSpa,
    this.isGitShallowCloneEnabled,
    this.isPrDeploymentsPublicEnabled,
    this.useBuildSecrets,
    this.injectBuildArgsToDockerfile,
    this.includeSourceCommitInBuild,
    this.dockerImagesToKeep,
    this.stopGracePeriod,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isStatic;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isGitSubmodulesEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isGitLfsEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isAutoDeployEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isForceHttpsEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isDebugEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isPreviewDeploymentsEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isLogDrainEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isGpuEnabled;

  String? gpuDriver;

  String? gpuCount;

  String? gpuDeviceIds;

  String? gpuOptions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isIncludeTimestamps;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isSwarmOnlyWorkerNodes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isRawComposeDeploymentEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isBuildServerEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isConsistentContainerNameEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isGzipEnabled;

  /// Traefik certificate resolver override. Null uses the server setting, \"none\" uses no resolver.
  String? traefikCertificateResolver;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isStripprefixEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? connectToDockerNetwork;

  String? customInternalName;

  String? customContainerNamePrefix;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isContainerLabelEscapeEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isEnvSortingEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? includeCoolifyDefaultVariables;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isContainerLabelReadonlyEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isPreserveRepositoryEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? disableBuildCache;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isSpa;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isGitShallowCloneEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isPrDeploymentsPublicEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? useBuildSecrets;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? injectBuildArgsToDockerfile;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? includeSourceCommitInBuild;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dockerImagesToKeep;

  int? stopGracePeriod;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ApplicationSetting &&
    other.isStatic == isStatic &&
    other.isGitSubmodulesEnabled == isGitSubmodulesEnabled &&
    other.isGitLfsEnabled == isGitLfsEnabled &&
    other.isAutoDeployEnabled == isAutoDeployEnabled &&
    other.isForceHttpsEnabled == isForceHttpsEnabled &&
    other.isDebugEnabled == isDebugEnabled &&
    other.isPreviewDeploymentsEnabled == isPreviewDeploymentsEnabled &&
    other.isLogDrainEnabled == isLogDrainEnabled &&
    other.isGpuEnabled == isGpuEnabled &&
    other.gpuDriver == gpuDriver &&
    other.gpuCount == gpuCount &&
    other.gpuDeviceIds == gpuDeviceIds &&
    other.gpuOptions == gpuOptions &&
    other.isIncludeTimestamps == isIncludeTimestamps &&
    other.isSwarmOnlyWorkerNodes == isSwarmOnlyWorkerNodes &&
    other.isRawComposeDeploymentEnabled == isRawComposeDeploymentEnabled &&
    other.isBuildServerEnabled == isBuildServerEnabled &&
    other.isConsistentContainerNameEnabled == isConsistentContainerNameEnabled &&
    other.isGzipEnabled == isGzipEnabled &&
    other.traefikCertificateResolver == traefikCertificateResolver &&
    other.isStripprefixEnabled == isStripprefixEnabled &&
    other.connectToDockerNetwork == connectToDockerNetwork &&
    other.customInternalName == customInternalName &&
    other.customContainerNamePrefix == customContainerNamePrefix &&
    other.isContainerLabelEscapeEnabled == isContainerLabelEscapeEnabled &&
    other.isEnvSortingEnabled == isEnvSortingEnabled &&
    other.includeCoolifyDefaultVariables == includeCoolifyDefaultVariables &&
    other.isContainerLabelReadonlyEnabled == isContainerLabelReadonlyEnabled &&
    other.isPreserveRepositoryEnabled == isPreserveRepositoryEnabled &&
    other.disableBuildCache == disableBuildCache &&
    other.isSpa == isSpa &&
    other.isGitShallowCloneEnabled == isGitShallowCloneEnabled &&
    other.isPrDeploymentsPublicEnabled == isPrDeploymentsPublicEnabled &&
    other.useBuildSecrets == useBuildSecrets &&
    other.injectBuildArgsToDockerfile == injectBuildArgsToDockerfile &&
    other.includeSourceCommitInBuild == includeSourceCommitInBuild &&
    other.dockerImagesToKeep == dockerImagesToKeep &&
    other.stopGracePeriod == stopGracePeriod;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (isStatic == null ? 0 : isStatic!.hashCode) +
    (isGitSubmodulesEnabled == null ? 0 : isGitSubmodulesEnabled!.hashCode) +
    (isGitLfsEnabled == null ? 0 : isGitLfsEnabled!.hashCode) +
    (isAutoDeployEnabled == null ? 0 : isAutoDeployEnabled!.hashCode) +
    (isForceHttpsEnabled == null ? 0 : isForceHttpsEnabled!.hashCode) +
    (isDebugEnabled == null ? 0 : isDebugEnabled!.hashCode) +
    (isPreviewDeploymentsEnabled == null ? 0 : isPreviewDeploymentsEnabled!.hashCode) +
    (isLogDrainEnabled == null ? 0 : isLogDrainEnabled!.hashCode) +
    (isGpuEnabled == null ? 0 : isGpuEnabled!.hashCode) +
    (gpuDriver == null ? 0 : gpuDriver!.hashCode) +
    (gpuCount == null ? 0 : gpuCount!.hashCode) +
    (gpuDeviceIds == null ? 0 : gpuDeviceIds!.hashCode) +
    (gpuOptions == null ? 0 : gpuOptions!.hashCode) +
    (isIncludeTimestamps == null ? 0 : isIncludeTimestamps!.hashCode) +
    (isSwarmOnlyWorkerNodes == null ? 0 : isSwarmOnlyWorkerNodes!.hashCode) +
    (isRawComposeDeploymentEnabled == null ? 0 : isRawComposeDeploymentEnabled!.hashCode) +
    (isBuildServerEnabled == null ? 0 : isBuildServerEnabled!.hashCode) +
    (isConsistentContainerNameEnabled == null ? 0 : isConsistentContainerNameEnabled!.hashCode) +
    (isGzipEnabled == null ? 0 : isGzipEnabled!.hashCode) +
    (traefikCertificateResolver == null ? 0 : traefikCertificateResolver!.hashCode) +
    (isStripprefixEnabled == null ? 0 : isStripprefixEnabled!.hashCode) +
    (connectToDockerNetwork == null ? 0 : connectToDockerNetwork!.hashCode) +
    (customInternalName == null ? 0 : customInternalName!.hashCode) +
    (customContainerNamePrefix == null ? 0 : customContainerNamePrefix!.hashCode) +
    (isContainerLabelEscapeEnabled == null ? 0 : isContainerLabelEscapeEnabled!.hashCode) +
    (isEnvSortingEnabled == null ? 0 : isEnvSortingEnabled!.hashCode) +
    (includeCoolifyDefaultVariables == null ? 0 : includeCoolifyDefaultVariables!.hashCode) +
    (isContainerLabelReadonlyEnabled == null ? 0 : isContainerLabelReadonlyEnabled!.hashCode) +
    (isPreserveRepositoryEnabled == null ? 0 : isPreserveRepositoryEnabled!.hashCode) +
    (disableBuildCache == null ? 0 : disableBuildCache!.hashCode) +
    (isSpa == null ? 0 : isSpa!.hashCode) +
    (isGitShallowCloneEnabled == null ? 0 : isGitShallowCloneEnabled!.hashCode) +
    (isPrDeploymentsPublicEnabled == null ? 0 : isPrDeploymentsPublicEnabled!.hashCode) +
    (useBuildSecrets == null ? 0 : useBuildSecrets!.hashCode) +
    (injectBuildArgsToDockerfile == null ? 0 : injectBuildArgsToDockerfile!.hashCode) +
    (includeSourceCommitInBuild == null ? 0 : includeSourceCommitInBuild!.hashCode) +
    (dockerImagesToKeep == null ? 0 : dockerImagesToKeep!.hashCode) +
    (stopGracePeriod == null ? 0 : stopGracePeriod!.hashCode);

  @override
  String toString() => 'ApplicationSetting[isStatic=$isStatic, isGitSubmodulesEnabled=$isGitSubmodulesEnabled, isGitLfsEnabled=$isGitLfsEnabled, isAutoDeployEnabled=$isAutoDeployEnabled, isForceHttpsEnabled=$isForceHttpsEnabled, isDebugEnabled=$isDebugEnabled, isPreviewDeploymentsEnabled=$isPreviewDeploymentsEnabled, isLogDrainEnabled=$isLogDrainEnabled, isGpuEnabled=$isGpuEnabled, gpuDriver=$gpuDriver, gpuCount=$gpuCount, gpuDeviceIds=$gpuDeviceIds, gpuOptions=$gpuOptions, isIncludeTimestamps=$isIncludeTimestamps, isSwarmOnlyWorkerNodes=$isSwarmOnlyWorkerNodes, isRawComposeDeploymentEnabled=$isRawComposeDeploymentEnabled, isBuildServerEnabled=$isBuildServerEnabled, isConsistentContainerNameEnabled=$isConsistentContainerNameEnabled, isGzipEnabled=$isGzipEnabled, traefikCertificateResolver=$traefikCertificateResolver, isStripprefixEnabled=$isStripprefixEnabled, connectToDockerNetwork=$connectToDockerNetwork, customInternalName=$customInternalName, customContainerNamePrefix=$customContainerNamePrefix, isContainerLabelEscapeEnabled=$isContainerLabelEscapeEnabled, isEnvSortingEnabled=$isEnvSortingEnabled, includeCoolifyDefaultVariables=$includeCoolifyDefaultVariables, isContainerLabelReadonlyEnabled=$isContainerLabelReadonlyEnabled, isPreserveRepositoryEnabled=$isPreserveRepositoryEnabled, disableBuildCache=$disableBuildCache, isSpa=$isSpa, isGitShallowCloneEnabled=$isGitShallowCloneEnabled, isPrDeploymentsPublicEnabled=$isPrDeploymentsPublicEnabled, useBuildSecrets=$useBuildSecrets, injectBuildArgsToDockerfile=$injectBuildArgsToDockerfile, includeSourceCommitInBuild=$includeSourceCommitInBuild, dockerImagesToKeep=$dockerImagesToKeep, stopGracePeriod=$stopGracePeriod]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.isStatic != null) {
      json[r'is_static'] = this.isStatic;
    } else {
      json[r'is_static'] = null;
    }
    if (this.isGitSubmodulesEnabled != null) {
      json[r'is_git_submodules_enabled'] = this.isGitSubmodulesEnabled;
    } else {
      json[r'is_git_submodules_enabled'] = null;
    }
    if (this.isGitLfsEnabled != null) {
      json[r'is_git_lfs_enabled'] = this.isGitLfsEnabled;
    } else {
      json[r'is_git_lfs_enabled'] = null;
    }
    if (this.isAutoDeployEnabled != null) {
      json[r'is_auto_deploy_enabled'] = this.isAutoDeployEnabled;
    } else {
      json[r'is_auto_deploy_enabled'] = null;
    }
    if (this.isForceHttpsEnabled != null) {
      json[r'is_force_https_enabled'] = this.isForceHttpsEnabled;
    } else {
      json[r'is_force_https_enabled'] = null;
    }
    if (this.isDebugEnabled != null) {
      json[r'is_debug_enabled'] = this.isDebugEnabled;
    } else {
      json[r'is_debug_enabled'] = null;
    }
    if (this.isPreviewDeploymentsEnabled != null) {
      json[r'is_preview_deployments_enabled'] = this.isPreviewDeploymentsEnabled;
    } else {
      json[r'is_preview_deployments_enabled'] = null;
    }
    if (this.isLogDrainEnabled != null) {
      json[r'is_log_drain_enabled'] = this.isLogDrainEnabled;
    } else {
      json[r'is_log_drain_enabled'] = null;
    }
    if (this.isGpuEnabled != null) {
      json[r'is_gpu_enabled'] = this.isGpuEnabled;
    } else {
      json[r'is_gpu_enabled'] = null;
    }
    if (this.gpuDriver != null) {
      json[r'gpu_driver'] = this.gpuDriver;
    } else {
      json[r'gpu_driver'] = null;
    }
    if (this.gpuCount != null) {
      json[r'gpu_count'] = this.gpuCount;
    } else {
      json[r'gpu_count'] = null;
    }
    if (this.gpuDeviceIds != null) {
      json[r'gpu_device_ids'] = this.gpuDeviceIds;
    } else {
      json[r'gpu_device_ids'] = null;
    }
    if (this.gpuOptions != null) {
      json[r'gpu_options'] = this.gpuOptions;
    } else {
      json[r'gpu_options'] = null;
    }
    if (this.isIncludeTimestamps != null) {
      json[r'is_include_timestamps'] = this.isIncludeTimestamps;
    } else {
      json[r'is_include_timestamps'] = null;
    }
    if (this.isSwarmOnlyWorkerNodes != null) {
      json[r'is_swarm_only_worker_nodes'] = this.isSwarmOnlyWorkerNodes;
    } else {
      json[r'is_swarm_only_worker_nodes'] = null;
    }
    if (this.isRawComposeDeploymentEnabled != null) {
      json[r'is_raw_compose_deployment_enabled'] = this.isRawComposeDeploymentEnabled;
    } else {
      json[r'is_raw_compose_deployment_enabled'] = null;
    }
    if (this.isBuildServerEnabled != null) {
      json[r'is_build_server_enabled'] = this.isBuildServerEnabled;
    } else {
      json[r'is_build_server_enabled'] = null;
    }
    if (this.isConsistentContainerNameEnabled != null) {
      json[r'is_consistent_container_name_enabled'] = this.isConsistentContainerNameEnabled;
    } else {
      json[r'is_consistent_container_name_enabled'] = null;
    }
    if (this.isGzipEnabled != null) {
      json[r'is_gzip_enabled'] = this.isGzipEnabled;
    } else {
      json[r'is_gzip_enabled'] = null;
    }
    if (this.traefikCertificateResolver != null) {
      json[r'traefik_certificate_resolver'] = this.traefikCertificateResolver;
    } else {
      json[r'traefik_certificate_resolver'] = null;
    }
    if (this.isStripprefixEnabled != null) {
      json[r'is_stripprefix_enabled'] = this.isStripprefixEnabled;
    } else {
      json[r'is_stripprefix_enabled'] = null;
    }
    if (this.connectToDockerNetwork != null) {
      json[r'connect_to_docker_network'] = this.connectToDockerNetwork;
    } else {
      json[r'connect_to_docker_network'] = null;
    }
    if (this.customInternalName != null) {
      json[r'custom_internal_name'] = this.customInternalName;
    } else {
      json[r'custom_internal_name'] = null;
    }
    if (this.customContainerNamePrefix != null) {
      json[r'custom_container_name_prefix'] = this.customContainerNamePrefix;
    } else {
      json[r'custom_container_name_prefix'] = null;
    }
    if (this.isContainerLabelEscapeEnabled != null) {
      json[r'is_container_label_escape_enabled'] = this.isContainerLabelEscapeEnabled;
    } else {
      json[r'is_container_label_escape_enabled'] = null;
    }
    if (this.isEnvSortingEnabled != null) {
      json[r'is_env_sorting_enabled'] = this.isEnvSortingEnabled;
    } else {
      json[r'is_env_sorting_enabled'] = null;
    }
    if (this.includeCoolifyDefaultVariables != null) {
      json[r'include_coolify_default_variables'] = this.includeCoolifyDefaultVariables;
    } else {
      json[r'include_coolify_default_variables'] = null;
    }
    if (this.isContainerLabelReadonlyEnabled != null) {
      json[r'is_container_label_readonly_enabled'] = this.isContainerLabelReadonlyEnabled;
    } else {
      json[r'is_container_label_readonly_enabled'] = null;
    }
    if (this.isPreserveRepositoryEnabled != null) {
      json[r'is_preserve_repository_enabled'] = this.isPreserveRepositoryEnabled;
    } else {
      json[r'is_preserve_repository_enabled'] = null;
    }
    if (this.disableBuildCache != null) {
      json[r'disable_build_cache'] = this.disableBuildCache;
    } else {
      json[r'disable_build_cache'] = null;
    }
    if (this.isSpa != null) {
      json[r'is_spa'] = this.isSpa;
    } else {
      json[r'is_spa'] = null;
    }
    if (this.isGitShallowCloneEnabled != null) {
      json[r'is_git_shallow_clone_enabled'] = this.isGitShallowCloneEnabled;
    } else {
      json[r'is_git_shallow_clone_enabled'] = null;
    }
    if (this.isPrDeploymentsPublicEnabled != null) {
      json[r'is_pr_deployments_public_enabled'] = this.isPrDeploymentsPublicEnabled;
    } else {
      json[r'is_pr_deployments_public_enabled'] = null;
    }
    if (this.useBuildSecrets != null) {
      json[r'use_build_secrets'] = this.useBuildSecrets;
    } else {
      json[r'use_build_secrets'] = null;
    }
    if (this.injectBuildArgsToDockerfile != null) {
      json[r'inject_build_args_to_dockerfile'] = this.injectBuildArgsToDockerfile;
    } else {
      json[r'inject_build_args_to_dockerfile'] = null;
    }
    if (this.includeSourceCommitInBuild != null) {
      json[r'include_source_commit_in_build'] = this.includeSourceCommitInBuild;
    } else {
      json[r'include_source_commit_in_build'] = null;
    }
    if (this.dockerImagesToKeep != null) {
      json[r'docker_images_to_keep'] = this.dockerImagesToKeep;
    } else {
      json[r'docker_images_to_keep'] = null;
    }
    if (this.stopGracePeriod != null) {
      json[r'stop_grace_period'] = this.stopGracePeriod;
    } else {
      json[r'stop_grace_period'] = null;
    }
    return json;
  }

  /// Returns a new [ApplicationSetting] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApplicationSetting? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ApplicationSetting[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ApplicationSetting[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ApplicationSetting(
        isStatic: mapValueOfType<bool>(json, r'is_static'),
        isGitSubmodulesEnabled: mapValueOfType<bool>(json, r'is_git_submodules_enabled'),
        isGitLfsEnabled: mapValueOfType<bool>(json, r'is_git_lfs_enabled'),
        isAutoDeployEnabled: mapValueOfType<bool>(json, r'is_auto_deploy_enabled'),
        isForceHttpsEnabled: mapValueOfType<bool>(json, r'is_force_https_enabled'),
        isDebugEnabled: mapValueOfType<bool>(json, r'is_debug_enabled'),
        isPreviewDeploymentsEnabled: mapValueOfType<bool>(json, r'is_preview_deployments_enabled'),
        isLogDrainEnabled: mapValueOfType<bool>(json, r'is_log_drain_enabled'),
        isGpuEnabled: mapValueOfType<bool>(json, r'is_gpu_enabled'),
        gpuDriver: mapValueOfType<String>(json, r'gpu_driver'),
        gpuCount: mapValueOfType<String>(json, r'gpu_count'),
        gpuDeviceIds: mapValueOfType<String>(json, r'gpu_device_ids'),
        gpuOptions: mapValueOfType<String>(json, r'gpu_options'),
        isIncludeTimestamps: mapValueOfType<bool>(json, r'is_include_timestamps'),
        isSwarmOnlyWorkerNodes: mapValueOfType<bool>(json, r'is_swarm_only_worker_nodes'),
        isRawComposeDeploymentEnabled: mapValueOfType<bool>(json, r'is_raw_compose_deployment_enabled'),
        isBuildServerEnabled: mapValueOfType<bool>(json, r'is_build_server_enabled'),
        isConsistentContainerNameEnabled: mapValueOfType<bool>(json, r'is_consistent_container_name_enabled'),
        isGzipEnabled: mapValueOfType<bool>(json, r'is_gzip_enabled'),
        traefikCertificateResolver: mapValueOfType<String>(json, r'traefik_certificate_resolver'),
        isStripprefixEnabled: mapValueOfType<bool>(json, r'is_stripprefix_enabled'),
        connectToDockerNetwork: mapValueOfType<bool>(json, r'connect_to_docker_network'),
        customInternalName: mapValueOfType<String>(json, r'custom_internal_name'),
        customContainerNamePrefix: mapValueOfType<String>(json, r'custom_container_name_prefix'),
        isContainerLabelEscapeEnabled: mapValueOfType<bool>(json, r'is_container_label_escape_enabled'),
        isEnvSortingEnabled: mapValueOfType<bool>(json, r'is_env_sorting_enabled'),
        includeCoolifyDefaultVariables: mapValueOfType<bool>(json, r'include_coolify_default_variables'),
        isContainerLabelReadonlyEnabled: mapValueOfType<bool>(json, r'is_container_label_readonly_enabled'),
        isPreserveRepositoryEnabled: mapValueOfType<bool>(json, r'is_preserve_repository_enabled'),
        disableBuildCache: mapValueOfType<bool>(json, r'disable_build_cache'),
        isSpa: mapValueOfType<bool>(json, r'is_spa'),
        isGitShallowCloneEnabled: mapValueOfType<bool>(json, r'is_git_shallow_clone_enabled'),
        isPrDeploymentsPublicEnabled: mapValueOfType<bool>(json, r'is_pr_deployments_public_enabled'),
        useBuildSecrets: mapValueOfType<bool>(json, r'use_build_secrets'),
        injectBuildArgsToDockerfile: mapValueOfType<bool>(json, r'inject_build_args_to_dockerfile'),
        includeSourceCommitInBuild: mapValueOfType<bool>(json, r'include_source_commit_in_build'),
        dockerImagesToKeep: mapValueOfType<int>(json, r'docker_images_to_keep'),
        stopGracePeriod: mapValueOfType<int>(json, r'stop_grace_period'),
      );
    }
    return null;
  }

  static List<ApplicationSetting> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ApplicationSetting>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApplicationSetting.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApplicationSetting> mapFromJson(dynamic json) {
    final map = <String, ApplicationSetting>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApplicationSetting.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApplicationSetting-objects as value to a dart map
  static Map<String, List<ApplicationSetting>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ApplicationSetting>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApplicationSetting.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

