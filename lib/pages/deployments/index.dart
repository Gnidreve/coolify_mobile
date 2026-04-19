import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../api/coolify_api.dart';
import '../../components/app_page_header.dart';
import '../../components/app_sidebar_drawer.dart';
import '../../core/services/app_toast.dart';
import '../../core/services/coolify_client_service.dart';
import '../../core/utils/resource_status.dart';
import '../../components/resource_card.dart';
import '../../components/state_views.dart';

class DeploymentsPage extends StatefulWidget {
  const DeploymentsPage({super.key});

  @override
  State<DeploymentsPage> createState() => _DeploymentsPageState();
}

class _DeploymentsPageState extends State<DeploymentsPage> {
  bool _loading = true;
  String? _error;
  List<DeploymentResource> _deployments = const [];

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    setState(() {
      _loading = true;
      _error = null;
    });

    try {
      final api = await CoolifyClientService.createClient();
      final deployments = await api.deployments.list();
      if (!mounted) return;
      setState(() => _deployments = deployments);
    } catch (error) {
      if (!mounted) return;
      setState(() => _error = error.toString());
      AppToast.error(
        context,
        error.toString(),
        title: 'Could not load deployments',
      );
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  Future<void> _openDeployment(DeploymentResource deployment) async {
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => _DeploymentDetailsPage(uuid: deployment.deploymentUuid),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) return const LoadingStateView();
    if (_error != null) {
      return ErrorStateView(message: _error!, onRetry: _load);
    }

    return RefreshIndicator(
      onRefresh: _load,
      child: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.all(16),
        children: [
          if (_deployments.isEmpty)
            const EmptyStateView(label: 'No deployments found.')
          else
            ..._deployments.map(
              (deployment) => Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: _DeploymentListCard(
                  deployment: deployment,
                  onTap: () => _openDeployment(deployment),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _DeploymentDetailsPage extends StatefulWidget {
  const _DeploymentDetailsPage({required this.uuid});

  final String uuid;

  @override
  State<_DeploymentDetailsPage> createState() => _DeploymentDetailsPageState();
}

class _DeploymentDetailsPageState extends State<_DeploymentDetailsPage> {
  bool _loading = true;
  String? _error;
  DeploymentResource? _deployment;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    setState(() {
      _loading = true;
      _error = null;
    });

    try {
      final api = await CoolifyClientService.createClient();
      final deployment = await api.deployments.get(widget.uuid);
      if (!mounted) return;
      setState(() => _deployment = deployment);
    } catch (error) {
      if (!mounted) return;
      setState(() => _error = error.toString());
      AppToast.error(
        context,
        error.toString(),
        title: 'Could not load deployment',
      );
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final deployment = _deployment;
    final theme = ShadTheme.of(context);

    return Scaffold(
      drawer: const AppSidebarDrawer(),
      appBar: const AppPageHeader(crumbs: ['Deployments', 'Deployment']),
      body: SafeArea(
        top: false,
        child: _loading
            ? const LoadingStateView()
            : _error != null
            ? ErrorStateView(message: _error!, onRetry: _load)
            : deployment == null
            ? const EmptyStateView(label: 'Deployment not found.')
            : ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  _DeploymentField(
                    label: 'Application',
                    value: deployment.applicationName,
                  ),
                  _DeploymentField(label: 'Server', value: deployment.serverName),
                  _DeploymentField(label: 'Status', value: deployment.status),
                  _DeploymentField(label: 'Commit', value: deployment.commit),
                  _DeploymentField(
                    label: 'Commit Message',
                    value: deployment.commitMessage,
                  ),
                  _DeploymentField(
                    label: 'Created At',
                    value: deployment.createdAt,
                  ),
                  _DeploymentField(
                    label: 'Updated At',
                    value: deployment.updatedAt,
                  ),
                  _DeploymentField(
                    label: 'Deployment URL',
                    value: deployment.deploymentUrl,
                  ),
                  const SizedBox(height: 20),
                  Text('Logs', style: theme.textTheme.h4),
                  const SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.muted,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: SelectableText(
                      deployment.logs.isEmpty
                          ? 'No logs available.'
                          : deployment.logs,
                      style: theme.textTheme.small.copyWith(
                        fontFamily: 'monospace',
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}

class _DeploymentField extends StatelessWidget {
  const _DeploymentField({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);

    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: theme.textTheme.small),
          const SizedBox(height: 6),
          SelectableText(
            value.isEmpty ? '-' : value,
            style: theme.textTheme.p.copyWith(
              color: theme.colorScheme.foreground,
            ),
          ),
        ],
      ),
    );
  }
}

class _DeploymentListCard extends StatelessWidget {
  const _DeploymentListCard({required this.deployment, required this.onTap});

  final DeploymentResource deployment;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ResourceCard(
      title: deployment.status.isEmpty
          ? 'Deployment'
          : resourceStatusLabel(deployment.status),
      subtitle: deployment.commitMessage.isEmpty
          ? deployment.applicationName
          : deployment.commitMessage,
      trailing: _DeploymentStatusAccent(
        color: resourceStatusColor(deployment.status),
      ),
      onTap: onTap,
    );
  }
}

class _DeploymentStatusAccent extends StatelessWidget {
  const _DeploymentStatusAccent({required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }
}
