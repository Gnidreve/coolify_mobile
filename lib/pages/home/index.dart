import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../deployments/index.dart';
import '../projects/index.dart';
import '../servers/index.dart';
import '../keys_tokens/index.dart';
import '../teams/index.dart';
import '../settings/index.dart';

enum _SidebarItem {
  dashboard,
  projects,
  servers,
  keysTokens,
  deployments,
  teams,
  settings,
}

extension _SidebarItemX on _SidebarItem {
  String get label => switch (this) {
    _SidebarItem.dashboard => 'Dashboard',
    _SidebarItem.projects => 'Projects',
    _SidebarItem.servers => 'Servers',
    _SidebarItem.keysTokens => 'Keys & Tokens',
    _SidebarItem.deployments => 'Deployments',
    _SidebarItem.teams => 'Teams',
    _SidebarItem.settings => 'Settings',
  };

  IconData get icon => switch (this) {
    _SidebarItem.dashboard => LucideIcons.layoutDashboard,
    _SidebarItem.projects => LucideIcons.folder,
    _SidebarItem.servers => LucideIcons.server,
    _SidebarItem.keysTokens => LucideIcons.key,
    _SidebarItem.deployments => LucideIcons.rocket,
    _SidebarItem.teams => LucideIcons.users,
    _SidebarItem.settings => LucideIcons.settings,
  };
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.onThemeModeChanged});

  final ValueChanged<ThemeMode> onThemeModeChanged;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _SidebarItem _active = _SidebarItem.dashboard;
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  void _navigate(_SidebarItem item) {
    setState(() => _active = item);
    _scaffoldKey.currentState?.closeEndDrawer();
  }

  Widget _buildBody() => switch (_active) {
    _SidebarItem.dashboard => const _DashboardView(),
    _SidebarItem.projects => const ProjectsPage(),
    _SidebarItem.servers => const ServersPage(),
    _SidebarItem.keysTokens => const KeysTokensPage(),
    _SidebarItem.deployments => const DeploymentsPage(),
    _SidebarItem.teams => const TeamsPage(),
    _SidebarItem.settings => SettingsPage(
      onThemeModeChanged: widget.onThemeModeChanged,
    ),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        titleSpacing: 20,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              'lib/assets/coolify-logo.svg',
              width: 22,
              height: 22,
            ),
            const SizedBox(width: 10),
            Text('Coolify Mobile', style: ShadTheme.of(context).textTheme.h4),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(LucideIcons.menu),
            onPressed: () => _scaffoldKey.currentState?.openEndDrawer(),
          ),
          const SizedBox(width: 8),
        ],
      ),
      endDrawer: _AppDrawer(active: _active, onNavigate: _navigate),
      body: SafeArea(top: false, child: _buildBody()),
    );
  }
}

class _AppDrawer extends StatelessWidget {
  const _AppDrawer({required this.active, required this.onNavigate});

  final _SidebarItem active;
  final ValueChanged<_SidebarItem> onNavigate;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 248,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'lib/assets/coolify-logo.svg',
                    width: 28,
                    height: 28,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'Coolify Mobile',
                      style: ShadTheme.of(context).textTheme.h4,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: 8),
                children: _SidebarItem.values.map((item) {
                  final isActive = item == active;
                  final primary = ShadTheme.of(context).colorScheme.primary;
                  return ListTile(
                    leading: Icon(item.icon),
                    title: Text(
                      item.label,
                      style: isActive
                          ? TextStyle(
                              fontWeight: FontWeight.bold,
                              color: primary,
                            )
                          : null,
                    ),
                    iconColor: isActive ? primary : null,
                    selected: isActive,
                    onTap: () => onNavigate(item),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
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
