import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../components/app_page_header.dart';
import '../../components/app_sidebar_drawer.dart';
import '../../core/services/app_shell_service.dart';
import '../deployments/index.dart';
import '../keys_tokens/index.dart';
import '../projects/index.dart';
import '../servers/index.dart';
import '../teams/index.dart';
import '../settings/index.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.onThemeModeChanged});

  final ValueChanged<ThemeMode> onThemeModeChanged;

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
    AppShellService.instance.activeItemListenable.addListener(_handleActiveItem);
  }

  @override
  void dispose() {
    AppShellService.instance.activeItemListenable.removeListener(
      _handleActiveItem,
    );
    super.dispose();
  }

  void _handleActiveItem() {
    if (!mounted) return;
    setState(() => _active = AppShellService.instance.activeItem);
  }

  Widget _buildBody() => switch (_active) {
    AppSidebarItem.dashboard => const _DashboardView(),
    AppSidebarItem.projects => ProjectsPage(key: _projectsKey),
    AppSidebarItem.servers => ServersPage(key: _serversKey),
    AppSidebarItem.keysTokens => KeysTokensPage(key: _keysTokensKey),
    AppSidebarItem.deployments => const DeploymentsPage(),
    AppSidebarItem.teams => const TeamsPage(),
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
