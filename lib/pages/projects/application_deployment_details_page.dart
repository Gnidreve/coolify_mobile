import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../api/coolify_api.dart';
import '../../components/app_page_header.dart';
import '../../components/app_sidebar_drawer.dart';
import '../../core/services/app_toast.dart';
import '../../core/services/coolify_client_service.dart';
import '../../components/state_views.dart';

class ApplicationDeploymentDetailsPage extends StatefulWidget {
  const ApplicationDeploymentDetailsPage({
    super.key,
    required this.deploymentUuid,
    this.parentCrumbs = const ['Deployments', 'Deployment'],
  });

  final String deploymentUuid;
  final List<String> parentCrumbs;

  @override
  State<ApplicationDeploymentDetailsPage> createState() =>
      _ApplicationDeploymentDetailsPageState();
}

class _ApplicationDeploymentDetailsPageState
    extends State<ApplicationDeploymentDetailsPage> {
  bool _loading = true;
  bool _refreshingLogs = false;
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
      final deployment = await api.deployments.get(widget.deploymentUuid);
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

  Future<void> _refreshLogs() async {
    if (_refreshingLogs) return;
    setState(() => _refreshingLogs = true);
    try {
      final api = await CoolifyClientService.createClient();
      final deployment = await api.deployments.get(widget.deploymentUuid);
      if (!mounted) return;
      setState(() => _deployment = deployment);
    } catch (error) {
      if (!mounted) return;
      AppToast.error(context, error.toString(), title: 'Could not refresh logs');
    } finally {
      if (mounted) setState(() => _refreshingLogs = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final deployment = _deployment;
    final theme = ShadTheme.of(context);

    return Scaffold(
      drawer: const AppSidebarDrawer(),
      appBar: AppPageHeader(crumbs: widget.parentCrumbs),
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
                    label: 'Image Tag',
                    value: deployment.dockerRegistryImageTag,
                  ),
                  _DeploymentField(
                    label: 'Current Process ID',
                    value: deployment.currentProcessId,
                  ),
                  _DeploymentField(label: 'Git Type', value: deployment.gitType),
                  _DeploymentField(
                    label: 'Flags',
                    value: [
                      'force_rebuild=${deployment.forceRebuild}',
                      'is_webhook=${deployment.isWebhook}',
                      'is_api=${deployment.isApi}',
                      'restart_only=${deployment.restartOnly}',
                      'only_this_server=${deployment.onlyThisServer}',
                      'rollback=${deployment.rollback}',
                    ].join('\n'),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Text('Logs', style: theme.textTheme.h4),
                      const Spacer(),
                      _refreshingLogs
                          ? const SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          : ShadButton.ghost(
                              size: ShadButtonSize.sm,
                              onPressed: _refreshLogs,
                              child: const Icon(LucideIcons.refreshCw, size: 16),
                            ),
                    ],
                  ),
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
