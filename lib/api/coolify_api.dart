import 'applications/index.dart';
import 'databases/index.dart';
import 'deployments/index.dart';
import 'github_apps/index.dart';
import 'health/index.dart';
import 'projects/index.dart';
import 'security/index.dart';
import 'servers/index.dart';

export 'applications/index.dart';
export 'databases/index.dart';
export 'deployments/index.dart';
export 'github_apps/index.dart';
export 'health/index.dart';
export 'projects/index.dart';
export 'security/index.dart';
export 'servers/index.dart';

/// Entry point for the Coolify SDK.
///
/// Usage:
///   final coolify = CoolifyApi(baseUrl: '...', apiToken: '...');
///   final isUp = await coolify.health.check();
///
/// Domain modules are added here as the SDK grows.
/// Each domain maps 1:1 to a Coolify API resource group.
class CoolifyApi {
  CoolifyApi({required this.baseUrl, required this.apiToken})
    : applications = ApplicationsApi(baseUrl: baseUrl, apiToken: apiToken),
      databases = DatabasesApi(baseUrl: baseUrl, apiToken: apiToken),
      health = HealthApi(baseUrl: baseUrl, apiToken: apiToken),
      githubApps = GithubAppsApi(baseUrl: baseUrl, apiToken: apiToken),
      projects = ProjectsApi(baseUrl: baseUrl, apiToken: apiToken),
      security = SecurityApi(baseUrl: baseUrl, apiToken: apiToken),
      servers = ServersApi(baseUrl: baseUrl, apiToken: apiToken),
      deployments = DeploymentsApi(baseUrl: baseUrl, apiToken: apiToken);

  final String baseUrl;
  final String apiToken;

  final ApplicationsApi applications;
  final DatabasesApi databases;
  final HealthApi health;
  final GithubAppsApi githubApps;
  final ProjectsApi projects;
  final SecurityApi security;
  final ServersApi servers;
  final DeploymentsApi deployments;
}
