//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Application {
  /// Returns a new [Application] instance.
  Application({
    this.id,
    this.description,
    this.repositoryProjectId,
    this.uuid,
    this.name,
    this.fqdn,
    this.noindexDomains = const [],
    this.configHash,
    this.gitRepository,
    this.gitBranch,
    this.gitCommitSha,
    this.gitFullUrl,
    this.dockerRegistryImageName,
    this.dockerRegistryImageTag,
    this.buildPack,
    this.staticImage,
    this.installCommand,
    this.buildCommand,
    this.startCommand,
    this.portsExposes,
    this.portsMappings,
    this.customNetworkAliases,
    this.baseDirectory,
    this.publishDirectory,
    this.healthCheckEnabled,
    this.healthCheckPath,
    this.healthCheckPort,
    this.healthCheckHost,
    this.healthCheckMethod,
    this.healthCheckReturnCode,
    this.healthCheckScheme,
    this.healthCheckResponseText,
    this.healthCheckInterval,
    this.healthCheckTimeout,
    this.healthCheckRetries,
    this.healthCheckStartPeriod,
    this.healthCheckType,
    this.healthCheckCommand,
    this.limitsMemory,
    this.limitsMemorySwap,
    this.limitsMemorySwappiness,
    this.limitsMemoryReservation,
    this.limitsCpus,
    this.limitsCpuset,
    this.limitsCpuShares,
    this.status,
    this.previewUrlTemplate,
    this.maxRestartCount,
    this.destinationType,
    this.destinationId,
    this.sourceId,
    this.privateKeyId,
    this.environmentId,
    this.dockerfile,
    this.dockerfileLocation,
    this.customLabels,
    this.dockerfileTargetBuild,
    this.manualWebhookSecretGithub,
    this.manualWebhookSecretGitlab,
    this.manualWebhookSecretBitbucket,
    this.manualWebhookSecretGitea,
    this.dockerComposeLocation,
    this.dockerCompose,
    this.dockerComposeRaw,
    this.dockerComposeDomains,
    this.dockerComposeCustomStartCommand,
    this.dockerComposeCustomBuildCommand,
    this.swarmReplicas,
    this.swarmPlacementConstraints,
    this.customDockerRunOptions,
    this.postDeploymentCommand,
    this.postDeploymentCommandContainer,
    this.preDeploymentCommand,
    this.preDeploymentCommandContainer,
    this.watchPaths,
    this.customHealthcheckFound,
    this.redirect,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.composeParsingVersion,
    this.customNginxConfiguration,
    this.isHttpBasicAuthEnabled,
    this.httpBasicAuthUsername,
    this.httpBasicAuthPassword,
    this.settings,
  });

  /// The application identifier in the database.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// The application description.
  String? description;

  /// The repository project identifier.
  int? repositoryProjectId;

  /// The application UUID.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uuid;

  /// The application name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// The application domains.
  String? fqdn;

  /// The subset of the application domains served with an X-Robots-Tag: noindex, nofollow response header.
  List<String>? noindexDomains;

  /// Configuration hash.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? configHash;

  /// Git repository URL.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gitRepository;

  /// Git branch.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gitBranch;

  /// Git commit SHA.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gitCommitSha;

  /// Git full URL.
  String? gitFullUrl;

  /// Docker registry image name.
  String? dockerRegistryImageName;

  /// Docker registry image tag.
  String? dockerRegistryImageTag;

  /// Build pack.
  ApplicationBuildPackEnum? buildPack;

  /// Static image used when static site is deployed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? staticImage;

  /// Install command.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? installCommand;

  /// Build command.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? buildCommand;

  /// Start command.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? startCommand;

  /// Ports exposes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? portsExposes;

  /// Ports mappings.
  String? portsMappings;

  /// Network aliases for Docker container.
  String? customNetworkAliases;

  /// Base directory for all commands.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? baseDirectory;

  /// Publish directory.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? publishDirectory;

  /// Health check enabled.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? healthCheckEnabled;

  /// Health check path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? healthCheckPath;

  /// Health check port.
  String? healthCheckPort;

  /// Health check host.
  String? healthCheckHost;

  /// Health check method.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? healthCheckMethod;

  /// Health check return code.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? healthCheckReturnCode;

  /// Health check scheme.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? healthCheckScheme;

  /// Health check response text.
  String? healthCheckResponseText;

  /// Health check interval in seconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? healthCheckInterval;

  /// Health check timeout in seconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? healthCheckTimeout;

  /// Health check retries count.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? healthCheckRetries;

  /// Health check start period in seconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? healthCheckStartPeriod;

  /// Health check type: http or cmd.
  ApplicationHealthCheckTypeEnum? healthCheckType;

  /// Health check command for CMD type.
  String? healthCheckCommand;

  /// Memory limit.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? limitsMemory;

  /// Memory swap limit.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? limitsMemorySwap;

  /// Memory swappiness.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? limitsMemorySwappiness;

  /// Memory reservation.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? limitsMemoryReservation;

  /// CPU limit.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? limitsCpus;

  /// CPU set.
  String? limitsCpuset;

  /// CPU shares.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? limitsCpuShares;

  /// Application status.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Preview URL template.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? previewUrlTemplate;

  /// Maximum container restart count before stopping.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxRestartCount;

  /// Destination type.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? destinationType;

  /// Destination identifier.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? destinationId;

  /// Source identifier.
  int? sourceId;

  /// Private key identifier.
  int? privateKeyId;

  /// Environment identifier.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? environmentId;

  /// Dockerfile content. Used for dockerfile build pack.
  String? dockerfile;

  /// Dockerfile location.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dockerfileLocation;

  /// Custom labels.
  String? customLabels;

  /// Dockerfile target build.
  String? dockerfileTargetBuild;

  /// Manual webhook secret for GitHub.
  String? manualWebhookSecretGithub;

  /// Manual webhook secret for GitLab.
  String? manualWebhookSecretGitlab;

  /// Manual webhook secret for Bitbucket.
  String? manualWebhookSecretBitbucket;

  /// Manual webhook secret for Gitea.
  String? manualWebhookSecretGitea;

  /// Docker compose location.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dockerComposeLocation;

  /// Docker compose content. Used for docker compose build pack.
  String? dockerCompose;

  /// Docker compose raw content.
  String? dockerComposeRaw;

  /// Docker compose domains.
  String? dockerComposeDomains;

  /// Docker compose custom start command.
  String? dockerComposeCustomStartCommand;

  /// Docker compose custom build command.
  String? dockerComposeCustomBuildCommand;

  /// Swarm replicas. Only used for swarm deployments.
  int? swarmReplicas;

  /// Swarm placement constraints. Only used for swarm deployments.
  String? swarmPlacementConstraints;

  /// Custom docker run options.
  String? customDockerRunOptions;

  /// Post deployment command.
  String? postDeploymentCommand;

  /// Post deployment command container.
  String? postDeploymentCommandContainer;

  /// Pre deployment command.
  String? preDeploymentCommand;

  /// Pre deployment command container.
  String? preDeploymentCommandContainer;

  /// Watch paths.
  String? watchPaths;

  /// Custom healthcheck found.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? customHealthcheckFound;

  /// How to set redirect with Traefik / Caddy. www<->non-www.
  ApplicationRedirectEnum? redirect;

  /// The date and time when the application was created.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// The date and time when the application was last updated.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  /// The date and time when the application was deleted.
  DateTime? deletedAt;

  /// How Coolify parse the compose file.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? composeParsingVersion;

  /// Custom Nginx configuration base64 encoded.
  String? customNginxConfiguration;

  /// HTTP Basic Authentication enabled.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isHttpBasicAuthEnabled;

  /// Username for HTTP Basic Authentication
  String? httpBasicAuthUsername;

  /// Password for HTTP Basic Authentication
  String? httpBasicAuthPassword;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ApplicationSetting? settings;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Application &&
    other.id == id &&
    other.description == description &&
    other.repositoryProjectId == repositoryProjectId &&
    other.uuid == uuid &&
    other.name == name &&
    other.fqdn == fqdn &&
    _deepEquality.equals(other.noindexDomains, noindexDomains) &&
    other.configHash == configHash &&
    other.gitRepository == gitRepository &&
    other.gitBranch == gitBranch &&
    other.gitCommitSha == gitCommitSha &&
    other.gitFullUrl == gitFullUrl &&
    other.dockerRegistryImageName == dockerRegistryImageName &&
    other.dockerRegistryImageTag == dockerRegistryImageTag &&
    other.buildPack == buildPack &&
    other.staticImage == staticImage &&
    other.installCommand == installCommand &&
    other.buildCommand == buildCommand &&
    other.startCommand == startCommand &&
    other.portsExposes == portsExposes &&
    other.portsMappings == portsMappings &&
    other.customNetworkAliases == customNetworkAliases &&
    other.baseDirectory == baseDirectory &&
    other.publishDirectory == publishDirectory &&
    other.healthCheckEnabled == healthCheckEnabled &&
    other.healthCheckPath == healthCheckPath &&
    other.healthCheckPort == healthCheckPort &&
    other.healthCheckHost == healthCheckHost &&
    other.healthCheckMethod == healthCheckMethod &&
    other.healthCheckReturnCode == healthCheckReturnCode &&
    other.healthCheckScheme == healthCheckScheme &&
    other.healthCheckResponseText == healthCheckResponseText &&
    other.healthCheckInterval == healthCheckInterval &&
    other.healthCheckTimeout == healthCheckTimeout &&
    other.healthCheckRetries == healthCheckRetries &&
    other.healthCheckStartPeriod == healthCheckStartPeriod &&
    other.healthCheckType == healthCheckType &&
    other.healthCheckCommand == healthCheckCommand &&
    other.limitsMemory == limitsMemory &&
    other.limitsMemorySwap == limitsMemorySwap &&
    other.limitsMemorySwappiness == limitsMemorySwappiness &&
    other.limitsMemoryReservation == limitsMemoryReservation &&
    other.limitsCpus == limitsCpus &&
    other.limitsCpuset == limitsCpuset &&
    other.limitsCpuShares == limitsCpuShares &&
    other.status == status &&
    other.previewUrlTemplate == previewUrlTemplate &&
    other.maxRestartCount == maxRestartCount &&
    other.destinationType == destinationType &&
    other.destinationId == destinationId &&
    other.sourceId == sourceId &&
    other.privateKeyId == privateKeyId &&
    other.environmentId == environmentId &&
    other.dockerfile == dockerfile &&
    other.dockerfileLocation == dockerfileLocation &&
    other.customLabels == customLabels &&
    other.dockerfileTargetBuild == dockerfileTargetBuild &&
    other.manualWebhookSecretGithub == manualWebhookSecretGithub &&
    other.manualWebhookSecretGitlab == manualWebhookSecretGitlab &&
    other.manualWebhookSecretBitbucket == manualWebhookSecretBitbucket &&
    other.manualWebhookSecretGitea == manualWebhookSecretGitea &&
    other.dockerComposeLocation == dockerComposeLocation &&
    other.dockerCompose == dockerCompose &&
    other.dockerComposeRaw == dockerComposeRaw &&
    other.dockerComposeDomains == dockerComposeDomains &&
    other.dockerComposeCustomStartCommand == dockerComposeCustomStartCommand &&
    other.dockerComposeCustomBuildCommand == dockerComposeCustomBuildCommand &&
    other.swarmReplicas == swarmReplicas &&
    other.swarmPlacementConstraints == swarmPlacementConstraints &&
    other.customDockerRunOptions == customDockerRunOptions &&
    other.postDeploymentCommand == postDeploymentCommand &&
    other.postDeploymentCommandContainer == postDeploymentCommandContainer &&
    other.preDeploymentCommand == preDeploymentCommand &&
    other.preDeploymentCommandContainer == preDeploymentCommandContainer &&
    other.watchPaths == watchPaths &&
    other.customHealthcheckFound == customHealthcheckFound &&
    other.redirect == redirect &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.deletedAt == deletedAt &&
    other.composeParsingVersion == composeParsingVersion &&
    other.customNginxConfiguration == customNginxConfiguration &&
    other.isHttpBasicAuthEnabled == isHttpBasicAuthEnabled &&
    other.httpBasicAuthUsername == httpBasicAuthUsername &&
    other.httpBasicAuthPassword == httpBasicAuthPassword &&
    other.settings == settings;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (repositoryProjectId == null ? 0 : repositoryProjectId!.hashCode) +
    (uuid == null ? 0 : uuid!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (fqdn == null ? 0 : fqdn!.hashCode) +
    (noindexDomains == null ? 0 : noindexDomains!.hashCode) +
    (configHash == null ? 0 : configHash!.hashCode) +
    (gitRepository == null ? 0 : gitRepository!.hashCode) +
    (gitBranch == null ? 0 : gitBranch!.hashCode) +
    (gitCommitSha == null ? 0 : gitCommitSha!.hashCode) +
    (gitFullUrl == null ? 0 : gitFullUrl!.hashCode) +
    (dockerRegistryImageName == null ? 0 : dockerRegistryImageName!.hashCode) +
    (dockerRegistryImageTag == null ? 0 : dockerRegistryImageTag!.hashCode) +
    (buildPack == null ? 0 : buildPack!.hashCode) +
    (staticImage == null ? 0 : staticImage!.hashCode) +
    (installCommand == null ? 0 : installCommand!.hashCode) +
    (buildCommand == null ? 0 : buildCommand!.hashCode) +
    (startCommand == null ? 0 : startCommand!.hashCode) +
    (portsExposes == null ? 0 : portsExposes!.hashCode) +
    (portsMappings == null ? 0 : portsMappings!.hashCode) +
    (customNetworkAliases == null ? 0 : customNetworkAliases!.hashCode) +
    (baseDirectory == null ? 0 : baseDirectory!.hashCode) +
    (publishDirectory == null ? 0 : publishDirectory!.hashCode) +
    (healthCheckEnabled == null ? 0 : healthCheckEnabled!.hashCode) +
    (healthCheckPath == null ? 0 : healthCheckPath!.hashCode) +
    (healthCheckPort == null ? 0 : healthCheckPort!.hashCode) +
    (healthCheckHost == null ? 0 : healthCheckHost!.hashCode) +
    (healthCheckMethod == null ? 0 : healthCheckMethod!.hashCode) +
    (healthCheckReturnCode == null ? 0 : healthCheckReturnCode!.hashCode) +
    (healthCheckScheme == null ? 0 : healthCheckScheme!.hashCode) +
    (healthCheckResponseText == null ? 0 : healthCheckResponseText!.hashCode) +
    (healthCheckInterval == null ? 0 : healthCheckInterval!.hashCode) +
    (healthCheckTimeout == null ? 0 : healthCheckTimeout!.hashCode) +
    (healthCheckRetries == null ? 0 : healthCheckRetries!.hashCode) +
    (healthCheckStartPeriod == null ? 0 : healthCheckStartPeriod!.hashCode) +
    (healthCheckType == null ? 0 : healthCheckType!.hashCode) +
    (healthCheckCommand == null ? 0 : healthCheckCommand!.hashCode) +
    (limitsMemory == null ? 0 : limitsMemory!.hashCode) +
    (limitsMemorySwap == null ? 0 : limitsMemorySwap!.hashCode) +
    (limitsMemorySwappiness == null ? 0 : limitsMemorySwappiness!.hashCode) +
    (limitsMemoryReservation == null ? 0 : limitsMemoryReservation!.hashCode) +
    (limitsCpus == null ? 0 : limitsCpus!.hashCode) +
    (limitsCpuset == null ? 0 : limitsCpuset!.hashCode) +
    (limitsCpuShares == null ? 0 : limitsCpuShares!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (previewUrlTemplate == null ? 0 : previewUrlTemplate!.hashCode) +
    (maxRestartCount == null ? 0 : maxRestartCount!.hashCode) +
    (destinationType == null ? 0 : destinationType!.hashCode) +
    (destinationId == null ? 0 : destinationId!.hashCode) +
    (sourceId == null ? 0 : sourceId!.hashCode) +
    (privateKeyId == null ? 0 : privateKeyId!.hashCode) +
    (environmentId == null ? 0 : environmentId!.hashCode) +
    (dockerfile == null ? 0 : dockerfile!.hashCode) +
    (dockerfileLocation == null ? 0 : dockerfileLocation!.hashCode) +
    (customLabels == null ? 0 : customLabels!.hashCode) +
    (dockerfileTargetBuild == null ? 0 : dockerfileTargetBuild!.hashCode) +
    (manualWebhookSecretGithub == null ? 0 : manualWebhookSecretGithub!.hashCode) +
    (manualWebhookSecretGitlab == null ? 0 : manualWebhookSecretGitlab!.hashCode) +
    (manualWebhookSecretBitbucket == null ? 0 : manualWebhookSecretBitbucket!.hashCode) +
    (manualWebhookSecretGitea == null ? 0 : manualWebhookSecretGitea!.hashCode) +
    (dockerComposeLocation == null ? 0 : dockerComposeLocation!.hashCode) +
    (dockerCompose == null ? 0 : dockerCompose!.hashCode) +
    (dockerComposeRaw == null ? 0 : dockerComposeRaw!.hashCode) +
    (dockerComposeDomains == null ? 0 : dockerComposeDomains!.hashCode) +
    (dockerComposeCustomStartCommand == null ? 0 : dockerComposeCustomStartCommand!.hashCode) +
    (dockerComposeCustomBuildCommand == null ? 0 : dockerComposeCustomBuildCommand!.hashCode) +
    (swarmReplicas == null ? 0 : swarmReplicas!.hashCode) +
    (swarmPlacementConstraints == null ? 0 : swarmPlacementConstraints!.hashCode) +
    (customDockerRunOptions == null ? 0 : customDockerRunOptions!.hashCode) +
    (postDeploymentCommand == null ? 0 : postDeploymentCommand!.hashCode) +
    (postDeploymentCommandContainer == null ? 0 : postDeploymentCommandContainer!.hashCode) +
    (preDeploymentCommand == null ? 0 : preDeploymentCommand!.hashCode) +
    (preDeploymentCommandContainer == null ? 0 : preDeploymentCommandContainer!.hashCode) +
    (watchPaths == null ? 0 : watchPaths!.hashCode) +
    (customHealthcheckFound == null ? 0 : customHealthcheckFound!.hashCode) +
    (redirect == null ? 0 : redirect!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (deletedAt == null ? 0 : deletedAt!.hashCode) +
    (composeParsingVersion == null ? 0 : composeParsingVersion!.hashCode) +
    (customNginxConfiguration == null ? 0 : customNginxConfiguration!.hashCode) +
    (isHttpBasicAuthEnabled == null ? 0 : isHttpBasicAuthEnabled!.hashCode) +
    (httpBasicAuthUsername == null ? 0 : httpBasicAuthUsername!.hashCode) +
    (httpBasicAuthPassword == null ? 0 : httpBasicAuthPassword!.hashCode) +
    (settings == null ? 0 : settings!.hashCode);

  @override
  String toString() => 'Application[id=$id, description=$description, repositoryProjectId=$repositoryProjectId, uuid=$uuid, name=$name, fqdn=$fqdn, noindexDomains=$noindexDomains, configHash=$configHash, gitRepository=$gitRepository, gitBranch=$gitBranch, gitCommitSha=$gitCommitSha, gitFullUrl=$gitFullUrl, dockerRegistryImageName=$dockerRegistryImageName, dockerRegistryImageTag=$dockerRegistryImageTag, buildPack=$buildPack, staticImage=$staticImage, installCommand=$installCommand, buildCommand=$buildCommand, startCommand=$startCommand, portsExposes=$portsExposes, portsMappings=$portsMappings, customNetworkAliases=$customNetworkAliases, baseDirectory=$baseDirectory, publishDirectory=$publishDirectory, healthCheckEnabled=$healthCheckEnabled, healthCheckPath=$healthCheckPath, healthCheckPort=$healthCheckPort, healthCheckHost=$healthCheckHost, healthCheckMethod=$healthCheckMethod, healthCheckReturnCode=$healthCheckReturnCode, healthCheckScheme=$healthCheckScheme, healthCheckResponseText=$healthCheckResponseText, healthCheckInterval=$healthCheckInterval, healthCheckTimeout=$healthCheckTimeout, healthCheckRetries=$healthCheckRetries, healthCheckStartPeriod=$healthCheckStartPeriod, healthCheckType=$healthCheckType, healthCheckCommand=$healthCheckCommand, limitsMemory=$limitsMemory, limitsMemorySwap=$limitsMemorySwap, limitsMemorySwappiness=$limitsMemorySwappiness, limitsMemoryReservation=$limitsMemoryReservation, limitsCpus=$limitsCpus, limitsCpuset=$limitsCpuset, limitsCpuShares=$limitsCpuShares, status=$status, previewUrlTemplate=$previewUrlTemplate, maxRestartCount=$maxRestartCount, destinationType=$destinationType, destinationId=$destinationId, sourceId=$sourceId, privateKeyId=$privateKeyId, environmentId=$environmentId, dockerfile=$dockerfile, dockerfileLocation=$dockerfileLocation, customLabels=$customLabels, dockerfileTargetBuild=$dockerfileTargetBuild, manualWebhookSecretGithub=$manualWebhookSecretGithub, manualWebhookSecretGitlab=$manualWebhookSecretGitlab, manualWebhookSecretBitbucket=$manualWebhookSecretBitbucket, manualWebhookSecretGitea=$manualWebhookSecretGitea, dockerComposeLocation=$dockerComposeLocation, dockerCompose=$dockerCompose, dockerComposeRaw=$dockerComposeRaw, dockerComposeDomains=$dockerComposeDomains, dockerComposeCustomStartCommand=$dockerComposeCustomStartCommand, dockerComposeCustomBuildCommand=$dockerComposeCustomBuildCommand, swarmReplicas=$swarmReplicas, swarmPlacementConstraints=$swarmPlacementConstraints, customDockerRunOptions=$customDockerRunOptions, postDeploymentCommand=$postDeploymentCommand, postDeploymentCommandContainer=$postDeploymentCommandContainer, preDeploymentCommand=$preDeploymentCommand, preDeploymentCommandContainer=$preDeploymentCommandContainer, watchPaths=$watchPaths, customHealthcheckFound=$customHealthcheckFound, redirect=$redirect, createdAt=$createdAt, updatedAt=$updatedAt, deletedAt=$deletedAt, composeParsingVersion=$composeParsingVersion, customNginxConfiguration=$customNginxConfiguration, isHttpBasicAuthEnabled=$isHttpBasicAuthEnabled, httpBasicAuthUsername=$httpBasicAuthUsername, httpBasicAuthPassword=$httpBasicAuthPassword, settings=$settings]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.repositoryProjectId != null) {
      json[r'repository_project_id'] = this.repositoryProjectId;
    } else {
      json[r'repository_project_id'] = null;
    }
    if (this.uuid != null) {
      json[r'uuid'] = this.uuid;
    } else {
      json[r'uuid'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.fqdn != null) {
      json[r'fqdn'] = this.fqdn;
    } else {
      json[r'fqdn'] = null;
    }
    if (this.noindexDomains != null) {
      json[r'noindex_domains'] = this.noindexDomains;
    } else {
      json[r'noindex_domains'] = null;
    }
    if (this.configHash != null) {
      json[r'config_hash'] = this.configHash;
    } else {
      json[r'config_hash'] = null;
    }
    if (this.gitRepository != null) {
      json[r'git_repository'] = this.gitRepository;
    } else {
      json[r'git_repository'] = null;
    }
    if (this.gitBranch != null) {
      json[r'git_branch'] = this.gitBranch;
    } else {
      json[r'git_branch'] = null;
    }
    if (this.gitCommitSha != null) {
      json[r'git_commit_sha'] = this.gitCommitSha;
    } else {
      json[r'git_commit_sha'] = null;
    }
    if (this.gitFullUrl != null) {
      json[r'git_full_url'] = this.gitFullUrl;
    } else {
      json[r'git_full_url'] = null;
    }
    if (this.dockerRegistryImageName != null) {
      json[r'docker_registry_image_name'] = this.dockerRegistryImageName;
    } else {
      json[r'docker_registry_image_name'] = null;
    }
    if (this.dockerRegistryImageTag != null) {
      json[r'docker_registry_image_tag'] = this.dockerRegistryImageTag;
    } else {
      json[r'docker_registry_image_tag'] = null;
    }
    if (this.buildPack != null) {
      json[r'build_pack'] = this.buildPack;
    } else {
      json[r'build_pack'] = null;
    }
    if (this.staticImage != null) {
      json[r'static_image'] = this.staticImage;
    } else {
      json[r'static_image'] = null;
    }
    if (this.installCommand != null) {
      json[r'install_command'] = this.installCommand;
    } else {
      json[r'install_command'] = null;
    }
    if (this.buildCommand != null) {
      json[r'build_command'] = this.buildCommand;
    } else {
      json[r'build_command'] = null;
    }
    if (this.startCommand != null) {
      json[r'start_command'] = this.startCommand;
    } else {
      json[r'start_command'] = null;
    }
    if (this.portsExposes != null) {
      json[r'ports_exposes'] = this.portsExposes;
    } else {
      json[r'ports_exposes'] = null;
    }
    if (this.portsMappings != null) {
      json[r'ports_mappings'] = this.portsMappings;
    } else {
      json[r'ports_mappings'] = null;
    }
    if (this.customNetworkAliases != null) {
      json[r'custom_network_aliases'] = this.customNetworkAliases;
    } else {
      json[r'custom_network_aliases'] = null;
    }
    if (this.baseDirectory != null) {
      json[r'base_directory'] = this.baseDirectory;
    } else {
      json[r'base_directory'] = null;
    }
    if (this.publishDirectory != null) {
      json[r'publish_directory'] = this.publishDirectory;
    } else {
      json[r'publish_directory'] = null;
    }
    if (this.healthCheckEnabled != null) {
      json[r'health_check_enabled'] = this.healthCheckEnabled;
    } else {
      json[r'health_check_enabled'] = null;
    }
    if (this.healthCheckPath != null) {
      json[r'health_check_path'] = this.healthCheckPath;
    } else {
      json[r'health_check_path'] = null;
    }
    if (this.healthCheckPort != null) {
      json[r'health_check_port'] = this.healthCheckPort;
    } else {
      json[r'health_check_port'] = null;
    }
    if (this.healthCheckHost != null) {
      json[r'health_check_host'] = this.healthCheckHost;
    } else {
      json[r'health_check_host'] = null;
    }
    if (this.healthCheckMethod != null) {
      json[r'health_check_method'] = this.healthCheckMethod;
    } else {
      json[r'health_check_method'] = null;
    }
    if (this.healthCheckReturnCode != null) {
      json[r'health_check_return_code'] = this.healthCheckReturnCode;
    } else {
      json[r'health_check_return_code'] = null;
    }
    if (this.healthCheckScheme != null) {
      json[r'health_check_scheme'] = this.healthCheckScheme;
    } else {
      json[r'health_check_scheme'] = null;
    }
    if (this.healthCheckResponseText != null) {
      json[r'health_check_response_text'] = this.healthCheckResponseText;
    } else {
      json[r'health_check_response_text'] = null;
    }
    if (this.healthCheckInterval != null) {
      json[r'health_check_interval'] = this.healthCheckInterval;
    } else {
      json[r'health_check_interval'] = null;
    }
    if (this.healthCheckTimeout != null) {
      json[r'health_check_timeout'] = this.healthCheckTimeout;
    } else {
      json[r'health_check_timeout'] = null;
    }
    if (this.healthCheckRetries != null) {
      json[r'health_check_retries'] = this.healthCheckRetries;
    } else {
      json[r'health_check_retries'] = null;
    }
    if (this.healthCheckStartPeriod != null) {
      json[r'health_check_start_period'] = this.healthCheckStartPeriod;
    } else {
      json[r'health_check_start_period'] = null;
    }
    if (this.healthCheckType != null) {
      json[r'health_check_type'] = this.healthCheckType;
    } else {
      json[r'health_check_type'] = null;
    }
    if (this.healthCheckCommand != null) {
      json[r'health_check_command'] = this.healthCheckCommand;
    } else {
      json[r'health_check_command'] = null;
    }
    if (this.limitsMemory != null) {
      json[r'limits_memory'] = this.limitsMemory;
    } else {
      json[r'limits_memory'] = null;
    }
    if (this.limitsMemorySwap != null) {
      json[r'limits_memory_swap'] = this.limitsMemorySwap;
    } else {
      json[r'limits_memory_swap'] = null;
    }
    if (this.limitsMemorySwappiness != null) {
      json[r'limits_memory_swappiness'] = this.limitsMemorySwappiness;
    } else {
      json[r'limits_memory_swappiness'] = null;
    }
    if (this.limitsMemoryReservation != null) {
      json[r'limits_memory_reservation'] = this.limitsMemoryReservation;
    } else {
      json[r'limits_memory_reservation'] = null;
    }
    if (this.limitsCpus != null) {
      json[r'limits_cpus'] = this.limitsCpus;
    } else {
      json[r'limits_cpus'] = null;
    }
    if (this.limitsCpuset != null) {
      json[r'limits_cpuset'] = this.limitsCpuset;
    } else {
      json[r'limits_cpuset'] = null;
    }
    if (this.limitsCpuShares != null) {
      json[r'limits_cpu_shares'] = this.limitsCpuShares;
    } else {
      json[r'limits_cpu_shares'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.previewUrlTemplate != null) {
      json[r'preview_url_template'] = this.previewUrlTemplate;
    } else {
      json[r'preview_url_template'] = null;
    }
    if (this.maxRestartCount != null) {
      json[r'max_restart_count'] = this.maxRestartCount;
    } else {
      json[r'max_restart_count'] = null;
    }
    if (this.destinationType != null) {
      json[r'destination_type'] = this.destinationType;
    } else {
      json[r'destination_type'] = null;
    }
    if (this.destinationId != null) {
      json[r'destination_id'] = this.destinationId;
    } else {
      json[r'destination_id'] = null;
    }
    if (this.sourceId != null) {
      json[r'source_id'] = this.sourceId;
    } else {
      json[r'source_id'] = null;
    }
    if (this.privateKeyId != null) {
      json[r'private_key_id'] = this.privateKeyId;
    } else {
      json[r'private_key_id'] = null;
    }
    if (this.environmentId != null) {
      json[r'environment_id'] = this.environmentId;
    } else {
      json[r'environment_id'] = null;
    }
    if (this.dockerfile != null) {
      json[r'dockerfile'] = this.dockerfile;
    } else {
      json[r'dockerfile'] = null;
    }
    if (this.dockerfileLocation != null) {
      json[r'dockerfile_location'] = this.dockerfileLocation;
    } else {
      json[r'dockerfile_location'] = null;
    }
    if (this.customLabels != null) {
      json[r'custom_labels'] = this.customLabels;
    } else {
      json[r'custom_labels'] = null;
    }
    if (this.dockerfileTargetBuild != null) {
      json[r'dockerfile_target_build'] = this.dockerfileTargetBuild;
    } else {
      json[r'dockerfile_target_build'] = null;
    }
    if (this.manualWebhookSecretGithub != null) {
      json[r'manual_webhook_secret_github'] = this.manualWebhookSecretGithub;
    } else {
      json[r'manual_webhook_secret_github'] = null;
    }
    if (this.manualWebhookSecretGitlab != null) {
      json[r'manual_webhook_secret_gitlab'] = this.manualWebhookSecretGitlab;
    } else {
      json[r'manual_webhook_secret_gitlab'] = null;
    }
    if (this.manualWebhookSecretBitbucket != null) {
      json[r'manual_webhook_secret_bitbucket'] = this.manualWebhookSecretBitbucket;
    } else {
      json[r'manual_webhook_secret_bitbucket'] = null;
    }
    if (this.manualWebhookSecretGitea != null) {
      json[r'manual_webhook_secret_gitea'] = this.manualWebhookSecretGitea;
    } else {
      json[r'manual_webhook_secret_gitea'] = null;
    }
    if (this.dockerComposeLocation != null) {
      json[r'docker_compose_location'] = this.dockerComposeLocation;
    } else {
      json[r'docker_compose_location'] = null;
    }
    if (this.dockerCompose != null) {
      json[r'docker_compose'] = this.dockerCompose;
    } else {
      json[r'docker_compose'] = null;
    }
    if (this.dockerComposeRaw != null) {
      json[r'docker_compose_raw'] = this.dockerComposeRaw;
    } else {
      json[r'docker_compose_raw'] = null;
    }
    if (this.dockerComposeDomains != null) {
      json[r'docker_compose_domains'] = this.dockerComposeDomains;
    } else {
      json[r'docker_compose_domains'] = null;
    }
    if (this.dockerComposeCustomStartCommand != null) {
      json[r'docker_compose_custom_start_command'] = this.dockerComposeCustomStartCommand;
    } else {
      json[r'docker_compose_custom_start_command'] = null;
    }
    if (this.dockerComposeCustomBuildCommand != null) {
      json[r'docker_compose_custom_build_command'] = this.dockerComposeCustomBuildCommand;
    } else {
      json[r'docker_compose_custom_build_command'] = null;
    }
    if (this.swarmReplicas != null) {
      json[r'swarm_replicas'] = this.swarmReplicas;
    } else {
      json[r'swarm_replicas'] = null;
    }
    if (this.swarmPlacementConstraints != null) {
      json[r'swarm_placement_constraints'] = this.swarmPlacementConstraints;
    } else {
      json[r'swarm_placement_constraints'] = null;
    }
    if (this.customDockerRunOptions != null) {
      json[r'custom_docker_run_options'] = this.customDockerRunOptions;
    } else {
      json[r'custom_docker_run_options'] = null;
    }
    if (this.postDeploymentCommand != null) {
      json[r'post_deployment_command'] = this.postDeploymentCommand;
    } else {
      json[r'post_deployment_command'] = null;
    }
    if (this.postDeploymentCommandContainer != null) {
      json[r'post_deployment_command_container'] = this.postDeploymentCommandContainer;
    } else {
      json[r'post_deployment_command_container'] = null;
    }
    if (this.preDeploymentCommand != null) {
      json[r'pre_deployment_command'] = this.preDeploymentCommand;
    } else {
      json[r'pre_deployment_command'] = null;
    }
    if (this.preDeploymentCommandContainer != null) {
      json[r'pre_deployment_command_container'] = this.preDeploymentCommandContainer;
    } else {
      json[r'pre_deployment_command_container'] = null;
    }
    if (this.watchPaths != null) {
      json[r'watch_paths'] = this.watchPaths;
    } else {
      json[r'watch_paths'] = null;
    }
    if (this.customHealthcheckFound != null) {
      json[r'custom_healthcheck_found'] = this.customHealthcheckFound;
    } else {
      json[r'custom_healthcheck_found'] = null;
    }
    if (this.redirect != null) {
      json[r'redirect'] = this.redirect;
    } else {
      json[r'redirect'] = null;
    }
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updated_at'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updated_at'] = null;
    }
    if (this.deletedAt != null) {
      json[r'deleted_at'] = this.deletedAt!.toUtc().toIso8601String();
    } else {
      json[r'deleted_at'] = null;
    }
    if (this.composeParsingVersion != null) {
      json[r'compose_parsing_version'] = this.composeParsingVersion;
    } else {
      json[r'compose_parsing_version'] = null;
    }
    if (this.customNginxConfiguration != null) {
      json[r'custom_nginx_configuration'] = this.customNginxConfiguration;
    } else {
      json[r'custom_nginx_configuration'] = null;
    }
    if (this.isHttpBasicAuthEnabled != null) {
      json[r'is_http_basic_auth_enabled'] = this.isHttpBasicAuthEnabled;
    } else {
      json[r'is_http_basic_auth_enabled'] = null;
    }
    if (this.httpBasicAuthUsername != null) {
      json[r'http_basic_auth_username'] = this.httpBasicAuthUsername;
    } else {
      json[r'http_basic_auth_username'] = null;
    }
    if (this.httpBasicAuthPassword != null) {
      json[r'http_basic_auth_password'] = this.httpBasicAuthPassword;
    } else {
      json[r'http_basic_auth_password'] = null;
    }
    if (this.settings != null) {
      json[r'settings'] = this.settings;
    } else {
      json[r'settings'] = null;
    }
    return json;
  }

  /// Returns a new [Application] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Application? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Application[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Application[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Application(
        id: mapValueOfType<int>(json, r'id'),
        description: mapValueOfType<String>(json, r'description'),
        repositoryProjectId: mapValueOfType<int>(json, r'repository_project_id'),
        uuid: mapValueOfType<String>(json, r'uuid'),
        name: mapValueOfType<String>(json, r'name'),
        fqdn: mapValueOfType<String>(json, r'fqdn'),
        noindexDomains: json[r'noindex_domains'] is Iterable
            ? (json[r'noindex_domains'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        configHash: mapValueOfType<String>(json, r'config_hash'),
        gitRepository: mapValueOfType<String>(json, r'git_repository'),
        gitBranch: mapValueOfType<String>(json, r'git_branch'),
        gitCommitSha: mapValueOfType<String>(json, r'git_commit_sha'),
        gitFullUrl: mapValueOfType<String>(json, r'git_full_url'),
        dockerRegistryImageName: mapValueOfType<String>(json, r'docker_registry_image_name'),
        dockerRegistryImageTag: mapValueOfType<String>(json, r'docker_registry_image_tag'),
        buildPack: ApplicationBuildPackEnum.fromJson(json[r'build_pack']),
        staticImage: mapValueOfType<String>(json, r'static_image'),
        installCommand: mapValueOfType<String>(json, r'install_command'),
        buildCommand: mapValueOfType<String>(json, r'build_command'),
        startCommand: mapValueOfType<String>(json, r'start_command'),
        portsExposes: mapValueOfType<String>(json, r'ports_exposes'),
        portsMappings: mapValueOfType<String>(json, r'ports_mappings'),
        customNetworkAliases: mapValueOfType<String>(json, r'custom_network_aliases'),
        baseDirectory: mapValueOfType<String>(json, r'base_directory'),
        publishDirectory: mapValueOfType<String>(json, r'publish_directory'),
        healthCheckEnabled: mapValueOfType<bool>(json, r'health_check_enabled'),
        healthCheckPath: mapValueOfType<String>(json, r'health_check_path'),
        healthCheckPort: mapValueOfType<String>(json, r'health_check_port'),
        healthCheckHost: mapValueOfType<String>(json, r'health_check_host'),
        healthCheckMethod: mapValueOfType<String>(json, r'health_check_method'),
        healthCheckReturnCode: mapValueOfType<int>(json, r'health_check_return_code'),
        healthCheckScheme: mapValueOfType<String>(json, r'health_check_scheme'),
        healthCheckResponseText: mapValueOfType<String>(json, r'health_check_response_text'),
        healthCheckInterval: mapValueOfType<int>(json, r'health_check_interval'),
        healthCheckTimeout: mapValueOfType<int>(json, r'health_check_timeout'),
        healthCheckRetries: mapValueOfType<int>(json, r'health_check_retries'),
        healthCheckStartPeriod: mapValueOfType<int>(json, r'health_check_start_period'),
        healthCheckType: ApplicationHealthCheckTypeEnum.fromJson(json[r'health_check_type']),
        healthCheckCommand: mapValueOfType<String>(json, r'health_check_command'),
        limitsMemory: mapValueOfType<String>(json, r'limits_memory'),
        limitsMemorySwap: mapValueOfType<String>(json, r'limits_memory_swap'),
        limitsMemorySwappiness: mapValueOfType<int>(json, r'limits_memory_swappiness'),
        limitsMemoryReservation: mapValueOfType<String>(json, r'limits_memory_reservation'),
        limitsCpus: mapValueOfType<String>(json, r'limits_cpus'),
        limitsCpuset: mapValueOfType<String>(json, r'limits_cpuset'),
        limitsCpuShares: mapValueOfType<int>(json, r'limits_cpu_shares'),
        status: mapValueOfType<String>(json, r'status'),
        previewUrlTemplate: mapValueOfType<String>(json, r'preview_url_template'),
        maxRestartCount: mapValueOfType<int>(json, r'max_restart_count'),
        destinationType: mapValueOfType<String>(json, r'destination_type'),
        destinationId: mapValueOfType<int>(json, r'destination_id'),
        sourceId: mapValueOfType<int>(json, r'source_id'),
        privateKeyId: mapValueOfType<int>(json, r'private_key_id'),
        environmentId: mapValueOfType<int>(json, r'environment_id'),
        dockerfile: mapValueOfType<String>(json, r'dockerfile'),
        dockerfileLocation: mapValueOfType<String>(json, r'dockerfile_location'),
        customLabels: mapValueOfType<String>(json, r'custom_labels'),
        dockerfileTargetBuild: mapValueOfType<String>(json, r'dockerfile_target_build'),
        manualWebhookSecretGithub: mapValueOfType<String>(json, r'manual_webhook_secret_github'),
        manualWebhookSecretGitlab: mapValueOfType<String>(json, r'manual_webhook_secret_gitlab'),
        manualWebhookSecretBitbucket: mapValueOfType<String>(json, r'manual_webhook_secret_bitbucket'),
        manualWebhookSecretGitea: mapValueOfType<String>(json, r'manual_webhook_secret_gitea'),
        dockerComposeLocation: mapValueOfType<String>(json, r'docker_compose_location'),
        dockerCompose: mapValueOfType<String>(json, r'docker_compose'),
        dockerComposeRaw: mapValueOfType<String>(json, r'docker_compose_raw'),
        dockerComposeDomains: mapValueOfType<String>(json, r'docker_compose_domains'),
        dockerComposeCustomStartCommand: mapValueOfType<String>(json, r'docker_compose_custom_start_command'),
        dockerComposeCustomBuildCommand: mapValueOfType<String>(json, r'docker_compose_custom_build_command'),
        swarmReplicas: mapValueOfType<int>(json, r'swarm_replicas'),
        swarmPlacementConstraints: mapValueOfType<String>(json, r'swarm_placement_constraints'),
        customDockerRunOptions: mapValueOfType<String>(json, r'custom_docker_run_options'),
        postDeploymentCommand: mapValueOfType<String>(json, r'post_deployment_command'),
        postDeploymentCommandContainer: mapValueOfType<String>(json, r'post_deployment_command_container'),
        preDeploymentCommand: mapValueOfType<String>(json, r'pre_deployment_command'),
        preDeploymentCommandContainer: mapValueOfType<String>(json, r'pre_deployment_command_container'),
        watchPaths: mapValueOfType<String>(json, r'watch_paths'),
        customHealthcheckFound: mapValueOfType<bool>(json, r'custom_healthcheck_found'),
        redirect: ApplicationRedirectEnum.fromJson(json[r'redirect']),
        createdAt: mapDateTime(json, r'created_at', r''),
        updatedAt: mapDateTime(json, r'updated_at', r''),
        deletedAt: mapDateTime(json, r'deleted_at', r''),
        composeParsingVersion: mapValueOfType<String>(json, r'compose_parsing_version'),
        customNginxConfiguration: mapValueOfType<String>(json, r'custom_nginx_configuration'),
        isHttpBasicAuthEnabled: mapValueOfType<bool>(json, r'is_http_basic_auth_enabled'),
        httpBasicAuthUsername: mapValueOfType<String>(json, r'http_basic_auth_username'),
        httpBasicAuthPassword: mapValueOfType<String>(json, r'http_basic_auth_password'),
        settings: ApplicationSetting.fromJson(json[r'settings']),
      );
    }
    return null;
  }

  static List<Application> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Application>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Application.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Application> mapFromJson(dynamic json) {
    final map = <String, Application>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Application.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Application-objects as value to a dart map
  static Map<String, List<Application>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Application>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Application.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Build pack.
class ApplicationBuildPackEnum {
  /// Instantiate a new enum with the provided [value].
  const ApplicationBuildPackEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const nixpacks = ApplicationBuildPackEnum._(r'nixpacks');
  static const railpack = ApplicationBuildPackEnum._(r'railpack');
  static const static_ = ApplicationBuildPackEnum._(r'static');
  static const dockerfile = ApplicationBuildPackEnum._(r'dockerfile');
  static const dockercompose = ApplicationBuildPackEnum._(r'dockercompose');

  /// List of all possible values in this [enum][ApplicationBuildPackEnum].
  static const values = <ApplicationBuildPackEnum>[
    nixpacks,
    railpack,
    static_,
    dockerfile,
    dockercompose,
  ];

  static ApplicationBuildPackEnum? fromJson(dynamic value) => ApplicationBuildPackEnumTypeTransformer().decode(value);

  static List<ApplicationBuildPackEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ApplicationBuildPackEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApplicationBuildPackEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ApplicationBuildPackEnum] to String,
/// and [decode] dynamic data back to [ApplicationBuildPackEnum].
class ApplicationBuildPackEnumTypeTransformer {
  factory ApplicationBuildPackEnumTypeTransformer() => _instance ??= const ApplicationBuildPackEnumTypeTransformer._();

  const ApplicationBuildPackEnumTypeTransformer._();

  String encode(ApplicationBuildPackEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ApplicationBuildPackEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ApplicationBuildPackEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'nixpacks': return ApplicationBuildPackEnum.nixpacks;
        case r'railpack': return ApplicationBuildPackEnum.railpack;
        case r'static': return ApplicationBuildPackEnum.static_;
        case r'dockerfile': return ApplicationBuildPackEnum.dockerfile;
        case r'dockercompose': return ApplicationBuildPackEnum.dockercompose;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ApplicationBuildPackEnumTypeTransformer] instance.
  static ApplicationBuildPackEnumTypeTransformer? _instance;
}


/// Health check type: http or cmd.
class ApplicationHealthCheckTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ApplicationHealthCheckTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const http = ApplicationHealthCheckTypeEnum._(r'http');
  static const cmd = ApplicationHealthCheckTypeEnum._(r'cmd');

  /// List of all possible values in this [enum][ApplicationHealthCheckTypeEnum].
  static const values = <ApplicationHealthCheckTypeEnum>[
    http,
    cmd,
  ];

  static ApplicationHealthCheckTypeEnum? fromJson(dynamic value) => ApplicationHealthCheckTypeEnumTypeTransformer().decode(value);

  static List<ApplicationHealthCheckTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ApplicationHealthCheckTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApplicationHealthCheckTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ApplicationHealthCheckTypeEnum] to String,
/// and [decode] dynamic data back to [ApplicationHealthCheckTypeEnum].
class ApplicationHealthCheckTypeEnumTypeTransformer {
  factory ApplicationHealthCheckTypeEnumTypeTransformer() => _instance ??= const ApplicationHealthCheckTypeEnumTypeTransformer._();

  const ApplicationHealthCheckTypeEnumTypeTransformer._();

  String encode(ApplicationHealthCheckTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ApplicationHealthCheckTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ApplicationHealthCheckTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'http': return ApplicationHealthCheckTypeEnum.http;
        case r'cmd': return ApplicationHealthCheckTypeEnum.cmd;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ApplicationHealthCheckTypeEnumTypeTransformer] instance.
  static ApplicationHealthCheckTypeEnumTypeTransformer? _instance;
}


/// How to set redirect with Traefik / Caddy. www<->non-www.
class ApplicationRedirectEnum {
  /// Instantiate a new enum with the provided [value].
  const ApplicationRedirectEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const www = ApplicationRedirectEnum._(r'www');
  static const nonWww = ApplicationRedirectEnum._(r'non-www');
  static const both = ApplicationRedirectEnum._(r'both');

  /// List of all possible values in this [enum][ApplicationRedirectEnum].
  static const values = <ApplicationRedirectEnum>[
    www,
    nonWww,
    both,
  ];

  static ApplicationRedirectEnum? fromJson(dynamic value) => ApplicationRedirectEnumTypeTransformer().decode(value);

  static List<ApplicationRedirectEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ApplicationRedirectEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApplicationRedirectEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ApplicationRedirectEnum] to String,
/// and [decode] dynamic data back to [ApplicationRedirectEnum].
class ApplicationRedirectEnumTypeTransformer {
  factory ApplicationRedirectEnumTypeTransformer() => _instance ??= const ApplicationRedirectEnumTypeTransformer._();

  const ApplicationRedirectEnumTypeTransformer._();

  String encode(ApplicationRedirectEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ApplicationRedirectEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ApplicationRedirectEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'www': return ApplicationRedirectEnum.www;
        case r'non-www': return ApplicationRedirectEnum.nonWww;
        case r'both': return ApplicationRedirectEnum.both;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ApplicationRedirectEnumTypeTransformer] instance.
  static ApplicationRedirectEnumTypeTransformer? _instance;
}


