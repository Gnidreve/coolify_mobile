import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../components/app_page_header.dart';
import '../../components/app_sidebar_drawer.dart';
import '../../core/services/app_shell_service.dart';
import '../deployments/index.dart';
import '../keys_tokens/index.dart';
import '../projects/index.dart';
import '../servers/index.dart';
import '../notifications/index.dart';
import '../settings/index.dart';
import '../teams/index.dart';
import 'coming_soon_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.onThemeModeChanged,
    required this.onLogout,
  });

  final ValueChanged<ThemeMode> onThemeModeChanged;
  final Future<void> Function() onLogout;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late AppSidebarItem _active = AppShellService.instance.activeItem;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _keysTokensKey = GlobalKey<KeysTokensPageState>();
  final _serversKey = GlobalKey<ServersPageState>();
  final _projectsKey = GlobalKey<ProjectsPageState>();

  @override
  void initState() {
    super.initState();
    final shell = AppShellService.instance;
    shell.activeItemListenable.addListener(_handleActiveItem);
    shell.onThemeModeChanged = widget.onThemeModeChanged;
    shell.onLogout = widget.onLogout;
    shell.loadInstanceInfo();
  }

  @override
  void dispose() {
    final shell = AppShellService.instance;
    shell.activeItemListenable.removeListener(_handleActiveItem);
    shell.onThemeModeChanged = null;
    shell.onLogout = null;
    super.dispose();
  }

  void _handleActiveItem() {
    if (!mounted) return;
    setState(() => _active = AppShellService.instance.activeItem);
  }

  Widget _buildBody() => switch (_active) {
    AppSidebarItem.dashboard => const _DashboardView(),
    AppSidebarItem.projects => ProjectsPage(key: _projectsKey),
    AppSidebarItem.deployments => const DeploymentsPage(),
    AppSidebarItem.servers => ServersPage(key: _serversKey),
    AppSidebarItem.keysTokens => KeysTokensPage(key: _keysTokensKey),
    AppSidebarItem.team => const TeamsPage(),
    AppSidebarItem.notifications => const NotificationsPage(),
    AppSidebarItem.sources ||
    AppSidebarItem.destinations ||
    AppSidebarItem.s3Storage ||
    AppSidebarItem.sharedVariables ||
    AppSidebarItem.tags => ComingSoonPage(
      title: _active.label,
      icon: _active.icon,
    ),
    AppSidebarItem.settings => SettingsPage(
      onThemeModeChanged: widget.onThemeModeChanged,
    ),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppPageHeader(
        crumbs: [_active.label],
        onLeadingPressed: () => _scaffoldKey.currentState?.openDrawer(),
        actions: switch (_active) {
          AppSidebarItem.keysTokens => [
            IconButton(
              icon: const Icon(LucideIcons.plus),
              tooltip: 'Add private key',
              onPressed: () => _keysTokensKey.currentState?.openAdd(),
            ),
          ],
          AppSidebarItem.servers => [
            IconButton(
              icon: const Icon(LucideIcons.plus),
              tooltip: 'Add server',
              onPressed: () => _serversKey.currentState?.openAdd(),
            ),
          ],
          AppSidebarItem.projects => [
            IconButton(
              icon: const Icon(LucideIcons.plus),
              tooltip: 'Add project',
              onPressed: () => _projectsKey.currentState?.openAdd(),
            ),
          ],
          _ => null,
        },
      ),
      drawer: const AppSidebarDrawer(),
      body: SafeArea(top: false, child: _buildBody()),
    );
  }
}

class _DashboardView extends StatelessWidget {
  const _DashboardView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Dashboard', style: ShadTheme.of(context).textTheme.muted),
    );
  }
}
