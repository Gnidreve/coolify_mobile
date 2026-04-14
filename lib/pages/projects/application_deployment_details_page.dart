import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../api/coolify_api.dart';
import '../../core/services/app_toast.dart';
import '../../core/services/coolify_client_service.dart';
import '../../core/widgets/state_views.dart';

class ApplicationDeploymentDetailsPage extends StatefulWidget {
  const ApplicationDeploymentDetailsPage({
    super.key,
    required this.deploymentUuid,
  });

  final String deploymentUuid;

  @override
  State<ApplicationDeploymentDetailsPage> createState() =>
      _ApplicationDeploymentDetailsPageState();
}

class _ApplicationDeploymentDetailsPageState
    extends State<ApplicationDeploymentDetailsPage> {
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

  @override
  Widget build(BuildContext context) {
    final deployment = _deployment;
    final theme = ShadTheme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Deployment')),
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
                  _InfoCard(
                    label: 'Application',
                    value: deployment.applicationName,
                  ),
                  _InfoCard(label: 'Server', value: deployment.serverName),
                  _InfoCard(label: 'Status', value: deployment.status),
                  _InfoCard(label: 'Commit', value: deployment.commit),
                  _InfoCard(
                    label: 'Commit Message',
                    value: deployment.commitMessage,
                  ),
                  _InfoCard(
                    label: 'Image Tag',
                    value: deployment.dockerRegistryImageTag,
                  ),
                  _InfoCard(
                    label: 'Current Process ID',
                    value: deployment.currentProcessId,
                  ),
                  _InfoCard(label: 'Git Type', value: deployment.gitType),
                  _InfoCard(
                    label: 'Deployment URL',
                    value: deployment.deploymentUrl,
                  ),
                  _InfoCard(
                    label: 'Created At',
                    value: deployment.createdAt,
                  ),
                  _InfoCard(
                    label: 'Updated At',
                    value: deployment.updatedAt,
                  ),
                  _FlagCard(
                    label: 'Flags',
                    values: [
                      'force_rebuild=${deployment.forceRebuild}',
                      'is_webhook=${deployment.isWebhook}',
                      'is_api=${deployment.isApi}',
                      'restart_only=${deployment.restartOnly}',
                      'only_this_server=${deployment.onlyThisServer}',
                      'rollback=${deployment.rollback}',
                    ],
                  ),
                  ShadCard(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Logs', style: theme.textTheme.large),
                          const SizedBox(height: 8),
                          SelectableText(
                            deployment.logs.isEmpty
                                ? 'No logs available.'
                                : deployment.logs,
                            style: theme.textTheme.small.copyWith(
                              fontFamily: 'monospace',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  const _InfoCard({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: ShadCard(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: theme.textTheme.small),
              const SizedBox(height: 6),
              SelectableText(
                value.isEmpty ? '-' : value,
                style: theme.textTheme.muted.copyWith(
                  color: theme.colorScheme.foreground,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FlagCard extends StatelessWidget {
  const _FlagCard({required this.label, required this.values});

  final String label;
  final List<String> values;

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: ShadCard(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: theme.textTheme.small),
              const SizedBox(height: 6),
              ...values.map(
                (value) => Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: SelectableText(
                    value,
                    style: theme.textTheme.muted.copyWith(
                      color: theme.colorScheme.foreground,
                      fontFamily: 'monospace',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
