//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateApplicationByUuidRequest {
  /// Returns a new [UpdateApplicationByUuidRequest] instance.
  UpdateApplicationByUuidRequest({
    this.githubAppUuid,
    this.gitRepository,
    this.gitBranch,
    this.portsExposes,
    this.buildPack,
    this.name,
    this.description,
    this.domains,
    this.noindexDomains = const [],
    this.gitCommitSha,
    this.dockerRegistryImageName,
    this.dockerRegistryImageTag,
    this.isStatic,
    this.isSpa,
    this.isAutoDeployEnabled,
    this.isForceHttpsEnabled,
    this.isPreviewDeploymentsEnabled,
    this.installCommand,
    this.buildCommand,
    this.startCommand,
    this.portsMappings,
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
    this.limitsMemory,
    this.limitsMemorySwap,
    this.limitsMemorySwappiness,
    this.limitsMemoryReservation,
    this.limitsCpus,
    this.limitsCpuset,
    this.limitsCpuShares,
    this.customLabels,
    this.customDockerRunOptions,
    this.postDeploymentCommand,
    this.postDeploymentCommandContainer,
    this.preDeploymentCommand,
    this.preDeploymentCommandContainer,
    this.manualWebhookSecretGithub,
    this.manualWebhookSecretGitlab,
    this.manualWebhookSecretBitbucket,
    this.manualWebhookSecretGitea,
    this.redirect,
    this.instantDeploy,
    this.dockerfile,
    this.dockerfileLocation,
    this.dockerComposeLocation,
    this.dockerComposeCustomStartCommand,
    this.dockerComposeCustomBuildCommand,
    this.dockerComposeDomains = const [],
    this.watchPaths,
    this.useBuildServer,
    this.useBuildSecrets,
    this.isGitSubmodulesEnabled,
    this.isGitLfsEnabled,
    this.isGitShallowCloneEnabled,
    this.disableBuildCache,
    this.injectBuildArgsToDockerfile,
    this.includeSourceCommitInBuild,
    this.isEnvSortingEnabled,
    this.isPrDeploymentsPublicEnabled,
    this.stopGracePeriod,
    this.dockerImagesToKeep,
    this.isGzipEnabled,
    this.isStripprefixEnabled,
    this.traefikCertificateResolver,
    this.isRawComposeDeploymentEnabled,
    this.isLogDrainEnabled,
    this.isGpuEnabled,
    this.gpuDriver,
    this.gpuCount,
    this.gpuDeviceIds,
    this.gpuOptions,
    this.isConsistentContainerNameEnabled,
    this.customInternalName,
    this.customContainerNamePrefix,
    this.previewUrlTemplate,
    this.maxRestartCount,
    this.connectToDockerNetwork,
    this.forceDomainOverride,
    this.isContainerLabelEscapeEnabled = true,
    this.isPreserveRepositoryEnabled,
  });

  /// The Github App UUID.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? githubAppUuid;

  /// The git repository URL.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gitRepository;

  /// The git branch.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gitBranch;

  /// The ports to expose.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? portsExposes;

  /// The build pack type.
  UpdateApplicationByUuidRequestBuildPackEnum? buildPack;

  /// The application name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// The application description.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// The application URLs in a comma-separated list.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domains;

  /// The subset of the application domains served with an X-Robots-Tag: noindex, nofollow response header, keeping them out of search engines. Entries that are not among the application domains are ignored.
  List<String> noindexDomains;

  /// The git commit SHA.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gitCommitSha;

  /// The docker registry image name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dockerRegistryImageName;

  /// The docker registry image tag.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dockerRegistryImageTag;

  /// The flag to indicate if the application is static.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isStatic;

  /// The flag to indicate if the application is a single-page application (SPA). Only relevant when is_static is true.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isSpa;

  /// The flag to indicate if auto-deploy is enabled on git push. Defaults to true.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isAutoDeployEnabled;

  /// The flag to indicate if HTTPS is forced. Defaults to true.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isForceHttpsEnabled;

  /// Enable preview deployments for pull requests.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isPreviewDeploymentsEnabled;

  /// The install command.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? installCommand;

  /// The build command.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? buildCommand;

  /// The start command.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? startCommand;

  /// The ports mappings.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? portsMappings;

  /// The base directory for all commands.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? baseDirectory;

  /// The publish directory.
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

  /// Custom labels.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? customLabels;

  /// Custom docker run options.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? customDockerRunOptions;

  /// Post deployment command.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? postDeploymentCommand;

  /// Post deployment command container.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? postDeploymentCommandContainer;

  /// Pre deployment command.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? preDeploymentCommand;

  /// Pre deployment command container.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? preDeploymentCommandContainer;

  /// Manual webhook secret for Github. Needs the deploy ability.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? manualWebhookSecretGithub;

  /// Manual webhook secret for Gitlab. Needs the deploy ability.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? manualWebhookSecretGitlab;

  /// Manual webhook secret for Bitbucket. Needs the deploy ability.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? manualWebhookSecretBitbucket;

  /// Manual webhook secret for Gitea. Needs the deploy ability.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? manualWebhookSecretGitea;

  /// How to set redirect with Traefik / Caddy. www<->non-www.
  UpdateApplicationByUuidRequestRedirectEnum? redirect;

  /// The flag to indicate if the application should be deployed instantly.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? instantDeploy;

  /// The Dockerfile content.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dockerfile;

  /// The Dockerfile location in the repository.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dockerfileLocation;

  /// The Docker Compose location.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dockerComposeLocation;

  /// The Docker Compose custom start command.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dockerComposeCustomStartCommand;

  /// The Docker Compose custom build command.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dockerComposeCustomBuildCommand;

  /// Array of URLs to be applied to containers of a dockercompose application.
  List<CreatePublicApplicationRequestDockerComposeDomainsInner> dockerComposeDomains;

  /// Watch path patterns, one per line (newline-separated). Commas do not separate patterns.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? watchPaths;

  /// Use build server.
  bool? useBuildServer;

  /// Use Docker Build Secrets for build-time environment variables.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? useBuildSecrets;

  /// Clone Git submodules.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isGitSubmodulesEnabled;

  /// Enable Git LFS.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isGitLfsEnabled;

  /// Use a shallow Git clone.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isGitShallowCloneEnabled;

  /// Disable the build cache.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? disableBuildCache;

  /// Inject build arguments into the Dockerfile build.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? injectBuildArgsToDockerfile;

  /// Include the source commit in the build.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? includeSourceCommitInBuild;

  /// Sort environment variables.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isEnvSortingEnabled;

  /// Make pull request deployments public.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isPrDeploymentsPublicEnabled;

  /// Container stop grace period in seconds.
  ///
  /// Minimum value: 1
  /// Maximum value: 3600
  int? stopGracePeriod;

  /// Number of Docker images to retain.
  ///
  /// Minimum value: 0
  /// Maximum value: 100
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dockerImagesToKeep;

  /// Enable gzip compression.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isGzipEnabled;

  /// Enable path prefix stripping.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isStripprefixEnabled;

  /// Traefik certificate resolver for this application. Null uses the server setting, \"none\" uses no resolver.
  String? traefikCertificateResolver;

  /// Deploy the raw Docker Compose definition.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isRawComposeDeploymentEnabled;

  /// Enable log drain for the application.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isLogDrainEnabled;

  /// Enable GPU support.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isGpuEnabled;

  /// GPU driver name.
  String? gpuDriver;

  /// Number of GPUs to allocate.
  String? gpuCount;

  /// Comma-separated GPU device IDs.
  String? gpuDeviceIds;

  /// Additional GPU options.
  String? gpuOptions;

  /// Use a consistent container name across deployments.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isConsistentContainerNameEnabled;

  /// Custom internal container name. Turns is_consistent_container_name_enabled on when that field is not sent; sending it as false together with a name returns 422.
  String? customInternalName;

  /// Prefix for generated container names (prefix-20260908T141530). Slugified and unique across the instance.
  String? customContainerNamePrefix;

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
  /// Minimum value: 0
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxRestartCount;

  /// The flag to connect the service to the predefined Docker network.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? connectToDockerNetwork;

  /// Force domain usage even if conflicts are detected. Default is false.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? forceDomainOverride;

  /// Escape special characters in labels. By default, $ (and other chars) is escaped. So if you write $ in the labels, it will be saved as $$. If you want to use env variables inside the labels, turn this off.
  bool isContainerLabelEscapeEnabled;

  /// Preserve git repository during application update. If false, the existing repository will be removed and replaced with the new one. If true, the existing repository will be kept and the new one will be ignored. Default is false.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isPreserveRepositoryEnabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateApplicationByUuidRequest &&
    other.githubAppUuid == githubAppUuid &&
    other.gitRepository == gitRepository &&
    other.gitBranch == gitBranch &&
    other.portsExposes == portsExposes &&
    other.buildPack == buildPack &&
    other.name == name &&
    other.description == description &&
    other.domains == domains &&
    _deepEquality.equals(other.noindexDomains, noindexDomains) &&
    other.gitCommitSha == gitCommitSha &&
    other.dockerRegistryImageName == dockerRegistryImageName &&
    other.dockerRegistryImageTag == dockerRegistryImageTag &&
    other.isStatic == isStatic &&
    other.isSpa == isSpa &&
    other.isAutoDeployEnabled == isAutoDeployEnabled &&
    other.isForceHttpsEnabled == isForceHttpsEnabled &&
    other.isPreviewDeploymentsEnabled == isPreviewDeploymentsEnabled &&
    other.installCommand == installCommand &&
    other.buildCommand == buildCommand &&
    other.startCommand == startCommand &&
    other.portsMappings == portsMappings &&
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
    other.limitsMemory == limitsMemory &&
    other.limitsMemorySwap == limitsMemorySwap &&
    other.limitsMemorySwappiness == limitsMemorySwappiness &&
    other.limitsMemoryReservation == limitsMemoryReservation &&
    other.limitsCpus == limitsCpus &&
    other.limitsCpuset == limitsCpuset &&
    other.limitsCpuShares == limitsCpuShares &&
    other.customLabels == customLabels &&
    other.customDockerRunOptions == customDockerRunOptions &&
    other.postDeploymentCommand == postDeploymentCommand &&
    other.postDeploymentCommandContainer == postDeploymentCommandContainer &&
    other.preDeploymentCommand == preDeploymentCommand &&
    other.preDeploymentCommandContainer == preDeploymentCommandContainer &&
    other.manualWebhookSecretGithub == manualWebhookSecretGithub &&
    other.manualWebhookSecretGitlab == manualWebhookSecretGitlab &&
    other.manualWebhookSecretBitbucket == manualWebhookSecretBitbucket &&
    other.manualWebhookSecretGitea == manualWebhookSecretGitea &&
    other.redirect == redirect &&
    other.instantDeploy == instantDeploy &&
    other.dockerfile == dockerfile &&
    other.dockerfileLocation == dockerfileLocation &&
    other.dockerComposeLocation == dockerComposeLocation &&
    other.dockerComposeCustomStartCommand == dockerComposeCustomStartCommand &&
    other.dockerComposeCustomBuildCommand == dockerComposeCustomBuildCommand &&
    _deepEquality.equals(other.dockerComposeDomains, dockerComposeDomains) &&
    other.watchPaths == watchPaths &&
    other.useBuildServer == useBuildServer &&
    other.useBuildSecrets == useBuildSecrets &&
    other.isGitSubmodulesEnabled == isGitSubmodulesEnabled &&
    other.isGitLfsEnabled == isGitLfsEnabled &&
    other.isGitShallowCloneEnabled == isGitShallowCloneEnabled &&
    other.disableBuildCache == disableBuildCache &&
    other.injectBuildArgsToDockerfile == injectBuildArgsToDockerfile &&
    other.includeSourceCommitInBuild == includeSourceCommitInBuild &&
    other.isEnvSortingEnabled == isEnvSortingEnabled &&
    other.isPrDeploymentsPublicEnabled == isPrDeploymentsPublicEnabled &&
    other.stopGracePeriod == stopGracePeriod &&
    other.dockerImagesToKeep == dockerImagesToKeep &&
    other.isGzipEnabled == isGzipEnabled &&
    other.isStripprefixEnabled == isStripprefixEnabled &&
    other.traefikCertificateResolver == traefikCertificateResolver &&
    other.isRawComposeDeploymentEnabled == isRawComposeDeploymentEnabled &&
    other.isLogDrainEnabled == isLogDrainEnabled &&
    other.isGpuEnabled == isGpuEnabled &&
    other.gpuDriver == gpuDriver &&
    other.gpuCount == gpuCount &&
    other.gpuDeviceIds == gpuDeviceIds &&
    other.gpuOptions == gpuOptions &&
    other.isConsistentContainerNameEnabled == isConsistentContainerNameEnabled &&
    other.customInternalName == customInternalName &&
    other.customContainerNamePrefix == customContainerNamePrefix &&
    other.previewUrlTemplate == previewUrlTemplate &&
    other.maxRestartCount == maxRestartCount &&
    other.connectToDockerNetwork == connectToDockerNetwork &&
    other.forceDomainOverride == forceDomainOverride &&
    other.isContainerLabelEscapeEnabled == isContainerLabelEscapeEnabled &&
    other.isPreserveRepositoryEnabled == isPreserveRepositoryEnabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (githubAppUuid == null ? 0 : githubAppUuid!.hashCode) +
    (gitRepository == null ? 0 : gitRepository!.hashCode) +
    (gitBranch == null ? 0 : gitBranch!.hashCode) +
    (portsExposes == null ? 0 : portsExposes!.hashCode) +
    (buildPack == null ? 0 : buildPack!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (domains == null ? 0 : domains!.hashCode) +
    (noindexDomains.hashCode) +
    (gitCommitSha == null ? 0 : gitCommitSha!.hashCode) +
    (dockerRegistryImageName == null ? 0 : dockerRegistryImageName!.hashCode) +
    (dockerRegistryImageTag == null ? 0 : dockerRegistryImageTag!.hashCode) +
    (isStatic == null ? 0 : isStatic!.hashCode) +
    (isSpa == null ? 0 : isSpa!.hashCode) +
    (isAutoDeployEnabled == null ? 0 : isAutoDeployEnabled!.hashCode) +
    (isForceHttpsEnabled == null ? 0 : isForceHttpsEnabled!.hashCode) +
    (isPreviewDeploymentsEnabled == null ? 0 : isPreviewDeploymentsEnabled!.hashCode) +
    (installCommand == null ? 0 : installCommand!.hashCode) +
    (buildCommand == null ? 0 : buildCommand!.hashCode) +
    (startCommand == null ? 0 : startCommand!.hashCode) +
    (portsMappings == null ? 0 : portsMappings!.hashCode) +
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
    (limitsMemory == null ? 0 : limitsMemory!.hashCode) +
    (limitsMemorySwap == null ? 0 : limitsMemorySwap!.hashCode) +
    (limitsMemorySwappiness == null ? 0 : limitsMemorySwappiness!.hashCode) +
    (limitsMemoryReservation == null ? 0 : limitsMemoryReservation!.hashCode) +
    (limitsCpus == null ? 0 : limitsCpus!.hashCode) +
    (limitsCpuset == null ? 0 : limitsCpuset!.hashCode) +
    (limitsCpuShares == null ? 0 : limitsCpuShares!.hashCode) +
    (customLabels == null ? 0 : customLabels!.hashCode) +
    (customDockerRunOptions == null ? 0 : customDockerRunOptions!.hashCode) +
    (postDeploymentCommand == null ? 0 : postDeploymentCommand!.hashCode) +
    (postDeploymentCommandContainer == null ? 0 : postDeploymentCommandContainer!.hashCode) +
    (preDeploymentCommand == null ? 0 : preDeploymentCommand!.hashCode) +
    (preDeploymentCommandContainer == null ? 0 : preDeploymentCommandContainer!.hashCode) +
    (manualWebhookSecretGithub == null ? 0 : manualWebhookSecretGithub!.hashCode) +
    (manualWebhookSecretGitlab == null ? 0 : manualWebhookSecretGitlab!.hashCode) +
    (manualWebhookSecretBitbucket == null ? 0 : manualWebhookSecretBitbucket!.hashCode) +
    (manualWebhookSecretGitea == null ? 0 : manualWebhookSecretGitea!.hashCode) +
    (redirect == null ? 0 : redirect!.hashCode) +
    (instantDeploy == null ? 0 : instantDeploy!.hashCode) +
    (dockerfile == null ? 0 : dockerfile!.hashCode) +
    (dockerfileLocation == null ? 0 : dockerfileLocation!.hashCode) +
    (dockerComposeLocation == null ? 0 : dockerComposeLocation!.hashCode) +
    (dockerComposeCustomStartCommand == null ? 0 : dockerComposeCustomStartCommand!.hashCode) +
    (dockerComposeCustomBuildCommand == null ? 0 : dockerComposeCustomBuildCommand!.hashCode) +
    (dockerComposeDomains.hashCode) +
    (watchPaths == null ? 0 : watchPaths!.hashCode) +
    (useBuildServer == null ? 0 : useBuildServer!.hashCode) +
    (useBuildSecrets == null ? 0 : useBuildSecrets!.hashCode) +
    (isGitSubmodulesEnabled == null ? 0 : isGitSubmodulesEnabled!.hashCode) +
    (isGitLfsEnabled == null ? 0 : isGitLfsEnabled!.hashCode) +
    (isGitShallowCloneEnabled == null ? 0 : isGitShallowCloneEnabled!.hashCode) +
    (disableBuildCache == null ? 0 : disableBuildCache!.hashCode) +
    (injectBuildArgsToDockerfile == null ? 0 : injectBuildArgsToDockerfile!.hashCode) +
    (includeSourceCommitInBuild == null ? 0 : includeSourceCommitInBuild!.hashCode) +
    (isEnvSortingEnabled == null ? 0 : isEnvSortingEnabled!.hashCode) +
    (isPrDeploymentsPublicEnabled == null ? 0 : isPrDeploymentsPublicEnabled!.hashCode) +
    (stopGracePeriod == null ? 0 : stopGracePeriod!.hashCode) +
    (dockerImagesToKeep == null ? 0 : dockerImagesToKeep!.hashCode) +
    (isGzipEnabled == null ? 0 : isGzipEnabled!.hashCode) +
    (isStripprefixEnabled == null ? 0 : isStripprefixEnabled!.hashCode) +
    (traefikCertificateResolver == null ? 0 : traefikCertificateResolver!.hashCode) +
    (isRawComposeDeploymentEnabled == null ? 0 : isRawComposeDeploymentEnabled!.hashCode) +
    (isLogDrainEnabled == null ? 0 : isLogDrainEnabled!.hashCode) +
    (isGpuEnabled == null ? 0 : isGpuEnabled!.hashCode) +
    (gpuDriver == null ? 0 : gpuDriver!.hashCode) +
    (gpuCount == null ? 0 : gpuCount!.hashCode) +
    (gpuDeviceIds == null ? 0 : gpuDeviceIds!.hashCode) +
    (gpuOptions == null ? 0 : gpuOptions!.hashCode) +
    (isConsistentContainerNameEnabled == null ? 0 : isConsistentContainerNameEnabled!.hashCode) +
    (customInternalName == null ? 0 : customInternalName!.hashCode) +
    (customContainerNamePrefix == null ? 0 : customContainerNamePrefix!.hashCode) +
    (previewUrlTemplate == null ? 0 : previewUrlTemplate!.hashCode) +
    (maxRestartCount == null ? 0 : maxRestartCount!.hashCode) +
    (connectToDockerNetwork == null ? 0 : connectToDockerNetwork!.hashCode) +
    (forceDomainOverride == null ? 0 : forceDomainOverride!.hashCode) +
    (isContainerLabelEscapeEnabled.hashCode) +
    (isPreserveRepositoryEnabled == null ? 0 : isPreserveRepositoryEnabled!.hashCode);

  @override
  String toString() => 'UpdateApplicationByUuidRequest[githubAppUuid=$githubAppUuid, gitRepository=$gitRepository, gitBranch=$gitBranch, portsExposes=$portsExposes, buildPack=$buildPack, name=$name, description=$description, domains=$domains, noindexDomains=$noindexDomains, gitCommitSha=$gitCommitSha, dockerRegistryImageName=$dockerRegistryImageName, dockerRegistryImageTag=$dockerRegistryImageTag, isStatic=$isStatic, isSpa=$isSpa, isAutoDeployEnabled=$isAutoDeployEnabled, isForceHttpsEnabled=$isForceHttpsEnabled, isPreviewDeploymentsEnabled=$isPreviewDeploymentsEnabled, installCommand=$installCommand, buildCommand=$buildCommand, startCommand=$startCommand, portsMappings=$portsMappings, baseDirectory=$baseDirectory, publishDirectory=$publishDirectory, healthCheckEnabled=$healthCheckEnabled, healthCheckPath=$healthCheckPath, healthCheckPort=$healthCheckPort, healthCheckHost=$healthCheckHost, healthCheckMethod=$healthCheckMethod, healthCheckReturnCode=$healthCheckReturnCode, healthCheckScheme=$healthCheckScheme, healthCheckResponseText=$healthCheckResponseText, healthCheckInterval=$healthCheckInterval, healthCheckTimeout=$healthCheckTimeout, healthCheckRetries=$healthCheckRetries, healthCheckStartPeriod=$healthCheckStartPeriod, limitsMemory=$limitsMemory, limitsMemorySwap=$limitsMemorySwap, limitsMemorySwappiness=$limitsMemorySwappiness, limitsMemoryReservation=$limitsMemoryReservation, limitsCpus=$limitsCpus, limitsCpuset=$limitsCpuset, limitsCpuShares=$limitsCpuShares, customLabels=$customLabels, customDockerRunOptions=$customDockerRunOptions, postDeploymentCommand=$postDeploymentCommand, postDeploymentCommandContainer=$postDeploymentCommandContainer, preDeploymentCommand=$preDeploymentCommand, preDeploymentCommandContainer=$preDeploymentCommandContainer, manualWebhookSecretGithub=$manualWebhookSecretGithub, manualWebhookSecretGitlab=$manualWebhookSecretGitlab, manualWebhookSecretBitbucket=$manualWebhookSecretBitbucket, manualWebhookSecretGitea=$manualWebhookSecretGitea, redirect=$redirect, instantDeploy=$instantDeploy, dockerfile=$dockerfile, dockerfileLocation=$dockerfileLocation, dockerComposeLocation=$dockerComposeLocation, dockerComposeCustomStartCommand=$dockerComposeCustomStartCommand, dockerComposeCustomBuildCommand=$dockerComposeCustomBuildCommand, dockerComposeDomains=$dockerComposeDomains, watchPaths=$watchPaths, useBuildServer=$useBuildServer, useBuildSecrets=$useBuildSecrets, isGitSubmodulesEnabled=$isGitSubmodulesEnabled, isGitLfsEnabled=$isGitLfsEnabled, isGitShallowCloneEnabled=$isGitShallowCloneEnabled, disableBuildCache=$disableBuildCache, injectBuildArgsToDockerfile=$injectBuildArgsToDockerfile, includeSourceCommitInBuild=$includeSourceCommitInBuild, isEnvSortingEnabled=$isEnvSortingEnabled, isPrDeploymentsPublicEnabled=$isPrDeploymentsPublicEnabled, stopGracePeriod=$stopGracePeriod, dockerImagesToKeep=$dockerImagesToKeep, isGzipEnabled=$isGzipEnabled, isStripprefixEnabled=$isStripprefixEnabled, traefikCertificateResolver=$traefikCertificateResolver, isRawComposeDeploymentEnabled=$isRawComposeDeploymentEnabled, isLogDrainEnabled=$isLogDrainEnabled, isGpuEnabled=$isGpuEnabled, gpuDriver=$gpuDriver, gpuCount=$gpuCount, gpuDeviceIds=$gpuDeviceIds, gpuOptions=$gpuOptions, isConsistentContainerNameEnabled=$isConsistentContainerNameEnabled, customInternalName=$customInternalName, customContainerNamePrefix=$customContainerNamePrefix, previewUrlTemplate=$previewUrlTemplate, maxRestartCount=$maxRestartCount, connectToDockerNetwork=$connectToDockerNetwork, forceDomainOverride=$forceDomainOverride, isContainerLabelEscapeEnabled=$isContainerLabelEscapeEnabled, isPreserveRepositoryEnabled=$isPreserveRepositoryEnabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.githubAppUuid != null) {
      json[r'github_app_uuid'] = this.githubAppUuid;
    } else {
      json[r'github_app_uuid'] = null;
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
    if (this.portsExposes != null) {
      json[r'ports_exposes'] = this.portsExposes;
    } else {
      json[r'ports_exposes'] = null;
    }
    if (this.buildPack != null) {
      json[r'build_pack'] = this.buildPack;
    } else {
      json[r'build_pack'] = null;
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
    if (this.domains != null) {
      json[r'domains'] = this.domains;
    } else {
      json[r'domains'] = null;
    }
      json[r'noindex_domains'] = this.noindexDomains;
    if (this.gitCommitSha != null) {
      json[r'git_commit_sha'] = this.gitCommitSha;
    } else {
      json[r'git_commit_sha'] = null;
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
    if (this.isStatic != null) {
      json[r'is_static'] = this.isStatic;
    } else {
      json[r'is_static'] = null;
    }
    if (this.isSpa != null) {
      json[r'is_spa'] = this.isSpa;
    } else {
      json[r'is_spa'] = null;
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
    if (this.isPreviewDeploymentsEnabled != null) {
      json[r'is_preview_deployments_enabled'] = this.isPreviewDeploymentsEnabled;
    } else {
      json[r'is_preview_deployments_enabled'] = null;
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
    if (this.portsMappings != null) {
      json[r'ports_mappings'] = this.portsMappings;
    } else {
      json[r'ports_mappings'] = null;
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
    if (this.customLabels != null) {
      json[r'custom_labels'] = this.customLabels;
    } else {
      json[r'custom_labels'] = null;
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
    if (this.redirect != null) {
      json[r'redirect'] = this.redirect;
    } else {
      json[r'redirect'] = null;
    }
    if (this.instantDeploy != null) {
      json[r'instant_deploy'] = this.instantDeploy;
    } else {
      json[r'instant_deploy'] = null;
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
    if (this.dockerComposeLocation != null) {
      json[r'docker_compose_location'] = this.dockerComposeLocation;
    } else {
      json[r'docker_compose_location'] = null;
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
      json[r'docker_compose_domains'] = this.dockerComposeDomains;
    if (this.watchPaths != null) {
      json[r'watch_paths'] = this.watchPaths;
    } else {
      json[r'watch_paths'] = null;
    }
    if (this.useBuildServer != null) {
      json[r'use_build_server'] = this.useBuildServer;
    } else {
      json[r'use_build_server'] = null;
    }
    if (this.useBuildSecrets != null) {
      json[r'use_build_secrets'] = this.useBuildSecrets;
    } else {
      json[r'use_build_secrets'] = null;
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
    if (this.isGitShallowCloneEnabled != null) {
      json[r'is_git_shallow_clone_enabled'] = this.isGitShallowCloneEnabled;
    } else {
      json[r'is_git_shallow_clone_enabled'] = null;
    }
    if (this.disableBuildCache != null) {
      json[r'disable_build_cache'] = this.disableBuildCache;
    } else {
      json[r'disable_build_cache'] = null;
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
    if (this.isEnvSortingEnabled != null) {
      json[r'is_env_sorting_enabled'] = this.isEnvSortingEnabled;
    } else {
      json[r'is_env_sorting_enabled'] = null;
    }
    if (this.isPrDeploymentsPublicEnabled != null) {
      json[r'is_pr_deployments_public_enabled'] = this.isPrDeploymentsPublicEnabled;
    } else {
      json[r'is_pr_deployments_public_enabled'] = null;
    }
    if (this.stopGracePeriod != null) {
      json[r'stop_grace_period'] = this.stopGracePeriod;
    } else {
      json[r'stop_grace_period'] = null;
    }
    if (this.dockerImagesToKeep != null) {
      json[r'docker_images_to_keep'] = this.dockerImagesToKeep;
    } else {
      json[r'docker_images_to_keep'] = null;
    }
    if (this.isGzipEnabled != null) {
      json[r'is_gzip_enabled'] = this.isGzipEnabled;
    } else {
      json[r'is_gzip_enabled'] = null;
    }
    if (this.isStripprefixEnabled != null) {
      json[r'is_stripprefix_enabled'] = this.isStripprefixEnabled;
    } else {
      json[r'is_stripprefix_enabled'] = null;
    }
    if (this.traefikCertificateResolver != null) {
      json[r'traefik_certificate_resolver'] = this.traefikCertificateResolver;
    } else {
      json[r'traefik_certificate_resolver'] = null;
    }
    if (this.isRawComposeDeploymentEnabled != null) {
      json[r'is_raw_compose_deployment_enabled'] = this.isRawComposeDeploymentEnabled;
    } else {
      json[r'is_raw_compose_deployment_enabled'] = null;
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
    if (this.isConsistentContainerNameEnabled != null) {
      json[r'is_consistent_container_name_enabled'] = this.isConsistentContainerNameEnabled;
    } else {
      json[r'is_consistent_container_name_enabled'] = null;
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
    if (this.connectToDockerNetwork != null) {
      json[r'connect_to_docker_network'] = this.connectToDockerNetwork;
    } else {
      json[r'connect_to_docker_network'] = null;
    }
    if (this.forceDomainOverride != null) {
      json[r'force_domain_override'] = this.forceDomainOverride;
    } else {
      json[r'force_domain_override'] = null;
    }
      json[r'is_container_label_escape_enabled'] = this.isContainerLabelEscapeEnabled;
    if (this.isPreserveRepositoryEnabled != null) {
      json[r'is_preserve_repository_enabled'] = this.isPreserveRepositoryEnabled;
    } else {
      json[r'is_preserve_repository_enabled'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateApplicationByUuidRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateApplicationByUuidRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateApplicationByUuidRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateApplicationByUuidRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateApplicationByUuidRequest(
        githubAppUuid: mapValueOfType<String>(json, r'github_app_uuid'),
        gitRepository: mapValueOfType<String>(json, r'git_repository'),
        gitBranch: mapValueOfType<String>(json, r'git_branch'),
        portsExposes: mapValueOfType<String>(json, r'ports_exposes'),
        buildPack: UpdateApplicationByUuidRequestBuildPackEnum.fromJson(json[r'build_pack']),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        domains: mapValueOfType<String>(json, r'domains'),
        noindexDomains: json[r'noindex_domains'] is Iterable
            ? (json[r'noindex_domains'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        gitCommitSha: mapValueOfType<String>(json, r'git_commit_sha'),
        dockerRegistryImageName: mapValueOfType<String>(json, r'docker_registry_image_name'),
        dockerRegistryImageTag: mapValueOfType<String>(json, r'docker_registry_image_tag'),
        isStatic: mapValueOfType<bool>(json, r'is_static'),
        isSpa: mapValueOfType<bool>(json, r'is_spa'),
        isAutoDeployEnabled: mapValueOfType<bool>(json, r'is_auto_deploy_enabled'),
        isForceHttpsEnabled: mapValueOfType<bool>(json, r'is_force_https_enabled'),
        isPreviewDeploymentsEnabled: mapValueOfType<bool>(json, r'is_preview_deployments_enabled'),
        installCommand: mapValueOfType<String>(json, r'install_command'),
        buildCommand: mapValueOfType<String>(json, r'build_command'),
        startCommand: mapValueOfType<String>(json, r'start_command'),
        portsMappings: mapValueOfType<String>(json, r'ports_mappings'),
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
        limitsMemory: mapValueOfType<String>(json, r'limits_memory'),
        limitsMemorySwap: mapValueOfType<String>(json, r'limits_memory_swap'),
        limitsMemorySwappiness: mapValueOfType<int>(json, r'limits_memory_swappiness'),
        limitsMemoryReservation: mapValueOfType<String>(json, r'limits_memory_reservation'),
        limitsCpus: mapValueOfType<String>(json, r'limits_cpus'),
        limitsCpuset: mapValueOfType<String>(json, r'limits_cpuset'),
        limitsCpuShares: mapValueOfType<int>(json, r'limits_cpu_shares'),
        customLabels: mapValueOfType<String>(json, r'custom_labels'),
        customDockerRunOptions: mapValueOfType<String>(json, r'custom_docker_run_options'),
        postDeploymentCommand: mapValueOfType<String>(json, r'post_deployment_command'),
        postDeploymentCommandContainer: mapValueOfType<String>(json, r'post_deployment_command_container'),
        preDeploymentCommand: mapValueOfType<String>(json, r'pre_deployment_command'),
        preDeploymentCommandContainer: mapValueOfType<String>(json, r'pre_deployment_command_container'),
        manualWebhookSecretGithub: mapValueOfType<String>(json, r'manual_webhook_secret_github'),
        manualWebhookSecretGitlab: mapValueOfType<String>(json, r'manual_webhook_secret_gitlab'),
        manualWebhookSecretBitbucket: mapValueOfType<String>(json, r'manual_webhook_secret_bitbucket'),
        manualWebhookSecretGitea: mapValueOfType<String>(json, r'manual_webhook_secret_gitea'),
        redirect: UpdateApplicationByUuidRequestRedirectEnum.fromJson(json[r'redirect']),
        instantDeploy: mapValueOfType<bool>(json, r'instant_deploy'),
        dockerfile: mapValueOfType<String>(json, r'dockerfile'),
        dockerfileLocation: mapValueOfType<String>(json, r'dockerfile_location'),
        dockerComposeLocation: mapValueOfType<String>(json, r'docker_compose_location'),
        dockerComposeCustomStartCommand: mapValueOfType<String>(json, r'docker_compose_custom_start_command'),
        dockerComposeCustomBuildCommand: mapValueOfType<String>(json, r'docker_compose_custom_build_command'),
        dockerComposeDomains: CreatePublicApplicationRequestDockerComposeDomainsInner.listFromJson(json[r'docker_compose_domains']),
        watchPaths: mapValueOfType<String>(json, r'watch_paths'),
        useBuildServer: mapValueOfType<bool>(json, r'use_build_server'),
        useBuildSecrets: mapValueOfType<bool>(json, r'use_build_secrets'),
        isGitSubmodulesEnabled: mapValueOfType<bool>(json, r'is_git_submodules_enabled'),
        isGitLfsEnabled: mapValueOfType<bool>(json, r'is_git_lfs_enabled'),
        isGitShallowCloneEnabled: mapValueOfType<bool>(json, r'is_git_shallow_clone_enabled'),
        disableBuildCache: mapValueOfType<bool>(json, r'disable_build_cache'),
        injectBuildArgsToDockerfile: mapValueOfType<bool>(json, r'inject_build_args_to_dockerfile'),
        includeSourceCommitInBuild: mapValueOfType<bool>(json, r'include_source_commit_in_build'),
        isEnvSortingEnabled: mapValueOfType<bool>(json, r'is_env_sorting_enabled'),
        isPrDeploymentsPublicEnabled: mapValueOfType<bool>(json, r'is_pr_deployments_public_enabled'),
        stopGracePeriod: mapValueOfType<int>(json, r'stop_grace_period'),
        dockerImagesToKeep: mapValueOfType<int>(json, r'docker_images_to_keep'),
        isGzipEnabled: mapValueOfType<bool>(json, r'is_gzip_enabled'),
        isStripprefixEnabled: mapValueOfType<bool>(json, r'is_stripprefix_enabled'),
        traefikCertificateResolver: mapValueOfType<String>(json, r'traefik_certificate_resolver'),
        isRawComposeDeploymentEnabled: mapValueOfType<bool>(json, r'is_raw_compose_deployment_enabled'),
        isLogDrainEnabled: mapValueOfType<bool>(json, r'is_log_drain_enabled'),
        isGpuEnabled: mapValueOfType<bool>(json, r'is_gpu_enabled'),
        gpuDriver: mapValueOfType<String>(json, r'gpu_driver'),
        gpuCount: mapValueOfType<String>(json, r'gpu_count'),
        gpuDeviceIds: mapValueOfType<String>(json, r'gpu_device_ids'),
        gpuOptions: mapValueOfType<String>(json, r'gpu_options'),
        isConsistentContainerNameEnabled: mapValueOfType<bool>(json, r'is_consistent_container_name_enabled'),
        customInternalName: mapValueOfType<String>(json, r'custom_internal_name'),
        customContainerNamePrefix: mapValueOfType<String>(json, r'custom_container_name_prefix'),
        previewUrlTemplate: mapValueOfType<String>(json, r'preview_url_template'),
        maxRestartCount: mapValueOfType<int>(json, r'max_restart_count'),
        connectToDockerNetwork: mapValueOfType<bool>(json, r'connect_to_docker_network'),
        forceDomainOverride: mapValueOfType<bool>(json, r'force_domain_override'),
        isContainerLabelEscapeEnabled: mapValueOfType<bool>(json, r'is_container_label_escape_enabled') ?? true,
        isPreserveRepositoryEnabled: mapValueOfType<bool>(json, r'is_preserve_repository_enabled'),
      );
    }
    return null;
  }

  static List<UpdateApplicationByUuidRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateApplicationByUuidRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateApplicationByUuidRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateApplicationByUuidRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateApplicationByUuidRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateApplicationByUuidRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateApplicationByUuidRequest-objects as value to a dart map
  static Map<String, List<UpdateApplicationByUuidRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateApplicationByUuidRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateApplicationByUuidRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// The build pack type.
class UpdateApplicationByUuidRequestBuildPackEnum {
  /// Instantiate a new enum with the provided [value].
  const UpdateApplicationByUuidRequestBuildPackEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const nixpacks = UpdateApplicationByUuidRequestBuildPackEnum._(r'nixpacks');
  static const railpack = UpdateApplicationByUuidRequestBuildPackEnum._(r'railpack');
  static const static_ = UpdateApplicationByUuidRequestBuildPackEnum._(r'static');
  static const dockerfile = UpdateApplicationByUuidRequestBuildPackEnum._(r'dockerfile');
  static const dockercompose = UpdateApplicationByUuidRequestBuildPackEnum._(r'dockercompose');

  /// List of all possible values in this [enum][UpdateApplicationByUuidRequestBuildPackEnum].
  static const values = <UpdateApplicationByUuidRequestBuildPackEnum>[
    nixpacks,
    railpack,
    static_,
    dockerfile,
    dockercompose,
  ];

  static UpdateApplicationByUuidRequestBuildPackEnum? fromJson(dynamic value) => UpdateApplicationByUuidRequestBuildPackEnumTypeTransformer().decode(value);

  static List<UpdateApplicationByUuidRequestBuildPackEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateApplicationByUuidRequestBuildPackEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateApplicationByUuidRequestBuildPackEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UpdateApplicationByUuidRequestBuildPackEnum] to String,
/// and [decode] dynamic data back to [UpdateApplicationByUuidRequestBuildPackEnum].
class UpdateApplicationByUuidRequestBuildPackEnumTypeTransformer {
  factory UpdateApplicationByUuidRequestBuildPackEnumTypeTransformer() => _instance ??= const UpdateApplicationByUuidRequestBuildPackEnumTypeTransformer._();

  const UpdateApplicationByUuidRequestBuildPackEnumTypeTransformer._();

  String encode(UpdateApplicationByUuidRequestBuildPackEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UpdateApplicationByUuidRequestBuildPackEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UpdateApplicationByUuidRequestBuildPackEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'nixpacks': return UpdateApplicationByUuidRequestBuildPackEnum.nixpacks;
        case r'railpack': return UpdateApplicationByUuidRequestBuildPackEnum.railpack;
        case r'static': return UpdateApplicationByUuidRequestBuildPackEnum.static_;
        case r'dockerfile': return UpdateApplicationByUuidRequestBuildPackEnum.dockerfile;
        case r'dockercompose': return UpdateApplicationByUuidRequestBuildPackEnum.dockercompose;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UpdateApplicationByUuidRequestBuildPackEnumTypeTransformer] instance.
  static UpdateApplicationByUuidRequestBuildPackEnumTypeTransformer? _instance;
}


/// How to set redirect with Traefik / Caddy. www<->non-www.
class UpdateApplicationByUuidRequestRedirectEnum {
  /// Instantiate a new enum with the provided [value].
  const UpdateApplicationByUuidRequestRedirectEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const www = UpdateApplicationByUuidRequestRedirectEnum._(r'www');
  static const nonWww = UpdateApplicationByUuidRequestRedirectEnum._(r'non-www');
  static const both = UpdateApplicationByUuidRequestRedirectEnum._(r'both');

  /// List of all possible values in this [enum][UpdateApplicationByUuidRequestRedirectEnum].
  static const values = <UpdateApplicationByUuidRequestRedirectEnum>[
    www,
    nonWww,
    both,
  ];

  static UpdateApplicationByUuidRequestRedirectEnum? fromJson(dynamic value) => UpdateApplicationByUuidRequestRedirectEnumTypeTransformer().decode(value);

  static List<UpdateApplicationByUuidRequestRedirectEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateApplicationByUuidRequestRedirectEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateApplicationByUuidRequestRedirectEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UpdateApplicationByUuidRequestRedirectEnum] to String,
/// and [decode] dynamic data back to [UpdateApplicationByUuidRequestRedirectEnum].
class UpdateApplicationByUuidRequestRedirectEnumTypeTransformer {
  factory UpdateApplicationByUuidRequestRedirectEnumTypeTransformer() => _instance ??= const UpdateApplicationByUuidRequestRedirectEnumTypeTransformer._();

  const UpdateApplicationByUuidRequestRedirectEnumTypeTransformer._();

  String encode(UpdateApplicationByUuidRequestRedirectEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UpdateApplicationByUuidRequestRedirectEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UpdateApplicationByUuidRequestRedirectEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'www': return UpdateApplicationByUuidRequestRedirectEnum.www;
        case r'non-www': return UpdateApplicationByUuidRequestRedirectEnum.nonWww;
        case r'both': return UpdateApplicationByUuidRequestRedirectEnum.both;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UpdateApplicationByUuidRequestRedirectEnumTypeTransformer] instance.
  static UpdateApplicationByUuidRequestRedirectEnumTypeTransformer? _instance;
}


