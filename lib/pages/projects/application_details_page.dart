import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../api/coolify_api.dart';
import '../../components/app_page_header.dart';
import '../../components/app_sidebar_drawer.dart';
import '../../components/application_action_menu_button.dart';
import '../../core/services/app_toast.dart';
import '../../core/services/coolify_client_service.dart';
import '../../components/state_views.dart';
import 'application_config_advanced_page.dart';
import 'application_config_limits_page.dart';
import 'application_config_danger_zone_page.dart';
import 'application_config_general_page.dart';
import 'application_config_git_page.dart';
import 'application_config_healthchecks_page.dart';
import 'application_config_webhooks_page.dart';
import 'application_deployments_page.dart';
import 'application_logs_page.dart';

class ApplicationDetailsPage extends StatefulWidget {
  const ApplicationDetailsPage({
    super.key,
    required this.applicationUuid,
    required this.fallbackTitle,
    this.parentCrumbs = const [],
  });

  final String applicationUuid;
  final String fallbackTitle;
  /// Breadcrumb labels for all ancestor pages, e.g. ['Projects', 'My Project', 'production'].
  final List<String> parentCrumbs;

  @override
  State<ApplicationDetailsPage> createState() => _ApplicationDetailsPageState();
}

class _ApplicationDetailsPageState extends State<ApplicationDetailsPage> {
  bool _loading = true;
  String? _error;
  ApplicationResource? _application;
  String _topTab = 'Config';
  String _section = 'General';

  static const _topTabs = <String>['Config', 'Deployments', 'Logs'];
  static const _sectionOptions = <String>[
    'General',
    'Advanced',
    'Resource Limits',
    'Git',
    'Webhooks',
    'Health Checks',
    'Danger Zone',
  ];

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
      final application = await api.applications.get(widget.applicationUuid);
      if (!mounted) return;
      setState(() => _application = application);
    } catch (error) {
      if (!mounted) return;
      setState(() => _error = error.toString());
      AppToast.error(
        context,
        error.toString(),
        title: 'Could not load application',
      );
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final application = _application;

    return Scaffold(
      drawer: const AppSidebarDrawer(),
      appBar: AppPageHeader(
        crumbs: [...widget.parentCrumbs, application?.name ?? widget.fallbackTitle],
        actions: application == null
            ? null
            : [
                ApplicationActionMenuButton(
                  applicationUuid: application.uuid,
                  onActionCompleted: _load,
                ),
                const SizedBox(width: 8),
              ],
      ),
      body: SafeArea(
        top: false,
        child: _loading
            ? const LoadingStateView()
            : _error != null
            ? ErrorStateView(message: _error!, onRetry: _load)
            : application == null
            ? const EmptyStateView(label: 'Application not found.')
            : ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  ShadTabs<String>(
                    value: _topTab,
                    onChanged: (value) => setState(() => _topTab = value),
                    tabs: _topTabs
                        .map(
                          (tab) => ShadTab(
                            value: tab,
                            content: const SizedBox.shrink(),
                            child: Text(tab),
                          ),
                        )
                        .toList(),
                  ),
                  if (_topTab == 'Config') ...[
                    const SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity,
                      child: ShadSelect<String>(
                        initialValue: _section,
                        onChanged: (value) {
                          if (value == null) return;
                          setState(() => _section = value);
                        },
                        options: _sectionOptions
                            .map(
                              (option) => ShadOption(
                                value: option,
                                child: Text(option),
                              ),
                            )
                            .toList(),
                        selectedOptionBuilder: (context, value) => Text(value),
                      ),
                    ),
                  ],
                  const SizedBox(height: 16),
                  _buildContent(application),
                ],
              ),
      ),
    );
  }

  void _handleApplicationUpdated(ApplicationResource application) {
    setState(() => _application = application);
  }

  Widget _buildContent(ApplicationResource application) {
    switch (_topTab) {
      case 'Deployments':
        return ApplicationDeploymentsPage(
          application: application,
          parentCrumbs: [...widget.parentCrumbs, application.name],
        );
      case 'Logs':
        return ApplicationLogsPage(
          applicationUuid: application.uuid,
          applicationName: application.name,
        );
      case 'Config':
      default:
        switch (_section) {
          case 'Git':
            return ApplicationConfigGitPage(
              application: application,
              onUpdated: _handleApplicationUpdated,
            );
          case 'Webhooks':
            return ApplicationConfigWebhooksPage(
              application: application,
              onUpdated: _handleApplicationUpdated,
            );
          case 'Health Checks':
            return ApplicationConfigHealthchecksPage(
              application: application,
              onUpdated: _handleApplicationUpdated,
            );
          case 'Advanced':
            return ApplicationConfigAdvancedPage(
              application: application,
              onUpdated: _handleApplicationUpdated,
            );
          case 'Resource Limits':
            return ApplicationConfigLimitsPage(
              application: application,
              onUpdated: _handleApplicationUpdated,
            );
          case 'Danger Zone':
            return ApplicationConfigDangerZonePage(application: application);
          case 'General':
          default:
            return ApplicationConfigGeneralPage(
              application: application,
              onUpdated: _handleApplicationUpdated,
            );
        }
    }
  }
}
