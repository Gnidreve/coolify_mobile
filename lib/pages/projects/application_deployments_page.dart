import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../api/coolify_api.dart';
import '../../core/services/app_toast.dart';
import '../../core/services/coolify_client_service.dart';
import '../../core/utils/resource_status.dart';
import '../../core/widgets/resource_card.dart';
import '../../core/widgets/state_views.dart';
import 'application_deployment_details_page.dart';

class ApplicationDeploymentsPage extends StatefulWidget {
  const ApplicationDeploymentsPage({super.key, required this.application});

  final ApplicationResource application;

  @override
  State<ApplicationDeploymentsPage> createState() =>
      _ApplicationDeploymentsPageState();
}

class _ApplicationDeploymentsPageState
    extends State<ApplicationDeploymentsPage> {
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
      final deployments = await api.deployments.listForApplication(
        widget.application.uuid,
      );
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
        builder: (_) => ApplicationDeploymentDetailsPage(
          deploymentUuid: deployment.deploymentUuid,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) return const LoadingStateView();
    if (_error != null) {
      return ErrorStateView(message: _error!, onRetry: _load);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                'Deployments',
                style: ShadTheme.of(context).textTheme.h4,
              ),
            ),
            ShadButton.outline(
              onPressed: _load,
              child: const Icon(LucideIcons.refreshCw, size: 16),
            ),
          ],
        ),
        const SizedBox(height: 16),
        if (_deployments.isEmpty)
          const Padding(
            padding: EdgeInsets.only(top: 12),
            child: EmptyStateView(label: 'No deployments found.'),
          )
        else
          ..._deployments.map(
            (deployment) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: ResourceCard(
                title: deployment.status.isEmpty
                    ? 'Deployment'
                    : resourceStatusLabel(deployment.status),
                subtitle: deployment.commitMessage.isEmpty
                    ? deployment.serverName
                    : deployment.commitMessage,
                trailing: Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: resourceStatusColor(deployment.status),
                    shape: BoxShape.circle,
                  ),
                ),
                onTap: () => _openDeployment(deployment),
              ),
            ),
          ),
      ],
    );
  }
}
