import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../api/coolify_api.dart';
import '../../components/resource_card.dart';
import '../../components/state_views.dart';
import '../../core/services/app_toast.dart';
import '../../core/services/coolify_client_service.dart';
import '../../core/utils/relative_time.dart';
import '../../core/utils/resource_status.dart';
import '../projects/application_deployment_details_page.dart';

/// Number of deployments listed on the dashboard (matches the Coolify web UI).
const _recentDeploymentCount = 5;

class _RecentDeployment {
  const _RecentDeployment(this.applicationName, this.deployment);

  final String applicationName;
  final ApplicationDeploymentQueue deployment;

  DateTime? get createdAt => DateTime.tryParse(deployment.createdAtOrEmpty);
}

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  bool _loading = true;
  String? _error;
  List<_RecentDeployment> _recent = const [];

  @override
  void initState() {
    super.initState();
    _load();
  }

  /// The API only lists *running* deployments globally (`GET /deployments`),
  /// so history is assembled from the per-application deployment lists.
  Future<void> _load() async {
    setState(() {
      _loading = true;
      _error = null;
    });

    try {
      final api = await CoolifyClientService.createClient();
      final applications =
          await api.applications.listApplications() ?? const <Application>[];

      var failures = 0;
      final perApplication = await Future.wait(
        applications.map((application) async {
          try {
            final deployments = await api.listApplicationDeployments(
              application.uuidOrEmpty,
              take: _recentDeploymentCount,
            );
            return deployments
                .map((d) => _RecentDeployment(application.displayName, d))
                .toList();
          } catch (_) {
            failures++;
            return const <_RecentDeployment>[];
          }
        }),
      );

      if (applications.isNotEmpty && failures == applications.length) {
        throw ApiException(0, 'Could not load deployments.');
      }

      final recent = perApplication.expand((list) => list).toList()
        ..sort((a, b) {
          final left = a.createdAt;
          final right = b.createdAt;
          if (left == null || right == null) return 0;
          return right.compareTo(left);
        });

      if (!mounted) return;
      setState(() => _recent = recent.take(_recentDeploymentCount).toList());
    } catch (error) {
      if (!mounted) return;
      setState(() => _error = apiErrorMessage(error));
      AppToast.error(
        context,
        apiErrorMessage(error),
        title: 'Could not load deployments',
      );
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  Future<void> _openDeployment(_RecentDeployment item) async {
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => ApplicationDeploymentDetailsPage(
          deploymentUuid: item.deployment.deploymentUuid ?? '',
          parentCrumbs: const ['Dashboard', 'Deployment'],
        ),
      ),
    );
    if (mounted) _load();
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) return const LoadingStateView();
    if (_error != null) {
      return ErrorStateView(message: _error!, onRetry: _load);
    }

    final theme = ShadTheme.of(context);

    return RefreshIndicator(
      onRefresh: _load,
      child: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.all(16),
        children: [
          Text('Deployments', style: theme.textTheme.h3),
          const SizedBox(height: 4),
          Text('Most recent deployments', style: theme.textTheme.muted),
          const SizedBox(height: 12),
          if (_recent.isEmpty)
            const EmptyStateView(label: 'No deployments yet.')
          else
            for (final item in _recent)
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: ResourceCard(
                  title: item.applicationName,
                  subtitle: item.deployment.commitMessageOrEmpty.isEmpty
                      ? 'No commit message'
                      : item.deployment.commitMessageOrEmpty,
                  tertiary: relativeTime(item.deployment.createdAtOrEmpty),
                  trailing: DeploymentStatusBadge(
                    status: item.deployment.statusOrEmpty,
                  ),
                  showChevron: false,
                  onTap: () => _openDeployment(item),
                ),
              ),
        ],
      ),
    );
  }
}

class DeploymentStatusBadge extends StatelessWidget {
  const DeploymentStatusBadge({super.key, required this.status});

  final String status;

  @override
  Widget build(BuildContext context) {
    final color = resourceStatusColor(status);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(999),
        border: Border.all(color: color.withValues(alpha: 0.4)),
      ),
      child: Text(
        resourceStatusLabel(status),
        style: ShadTheme.of(
          context,
        ).textTheme.small.copyWith(color: color, fontWeight: FontWeight.w600),
      ),
    );
  }
}
