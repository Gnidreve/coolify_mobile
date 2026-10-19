import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../api/coolify_api.dart';
import 'coolify_client_service.dart';

/// Sidebar groups, mirroring the navigation of the Coolify web UI.
enum AppSidebarGroup { workspace, infrastructure, manage }

extension AppSidebarGroupX on AppSidebarGroup {
  String get label => switch (this) {
    AppSidebarGroup.workspace => 'Workspace',
    AppSidebarGroup.infrastructure => 'Infrastructure',
    AppSidebarGroup.manage => 'Manage',
  };
}

enum AppSidebarItem {
  dashboard,
  projects,
  servers,
  sources,
  destinations,
  s3Storage,
  sharedVariables,
  team,
  notifications,
  keysTokens,
  tags,
  settings,
}

extension AppSidebarItemX on AppSidebarItem {
  String get label => switch (this) {
    AppSidebarItem.dashboard => 'Dashboard',
    AppSidebarItem.projects => 'Projects',
    AppSidebarItem.servers => 'Servers',
    AppSidebarItem.sources => 'Sources',
    AppSidebarItem.destinations => 'Destinations',
    AppSidebarItem.s3Storage => 'S3 Storage',
    AppSidebarItem.sharedVariables => 'Shared Variables',
    AppSidebarItem.team => 'Team',
    AppSidebarItem.notifications => 'Notifications',
    AppSidebarItem.keysTokens => 'Keys & Tokens',
    AppSidebarItem.tags => 'Tags',
    AppSidebarItem.settings => 'Settings',
  };

  AppSidebarGroup get group => switch (this) {
    AppSidebarItem.dashboard ||
    AppSidebarItem.projects => AppSidebarGroup.workspace,
    AppSidebarItem.servers ||
    AppSidebarItem.sources ||
    AppSidebarItem.destinations ||
    AppSidebarItem.s3Storage ||
    AppSidebarItem.sharedVariables => AppSidebarGroup.infrastructure,
    AppSidebarItem.team ||
    AppSidebarItem.notifications ||
    AppSidebarItem.keysTokens ||
    AppSidebarItem.tags ||
    AppSidebarItem.settings => AppSidebarGroup.manage,
  };

  IconData get icon => switch (this) {
    AppSidebarItem.dashboard => LucideIcons.house,
    AppSidebarItem.projects => LucideIcons.layoutGrid,
    AppSidebarItem.servers => LucideIcons.server,
    AppSidebarItem.sources => LucideIcons.gitBranch,
    AppSidebarItem.destinations => LucideIcons.route,
    AppSidebarItem.s3Storage => LucideIcons.package,
    AppSidebarItem.sharedVariables => LucideIcons.share2,
    AppSidebarItem.team => LucideIcons.users,
    AppSidebarItem.notifications => LucideIcons.bell,
    AppSidebarItem.keysTokens => LucideIcons.keyRound,
    AppSidebarItem.tags => LucideIcons.tag,
    AppSidebarItem.settings => LucideIcons.settings,
  };
}

/// Facts about the connected instance shown in the sidebar.
class InstanceInfo {
  const InstanceInfo({this.version, this.teamName});

  final String? version;
  final String? teamName;
}

class AppShellService {
  AppShellService._();

  static final AppShellService instance = AppShellService._();

  final ValueNotifier<AppSidebarItem> _activeItem = ValueNotifier(
    AppSidebarItem.dashboard,
  );
  final ValueNotifier<InstanceInfo> _instanceInfo = ValueNotifier(
    const InstanceInfo(),
  );

  /// Set by the home page so the sidebar can trigger app-level actions.
  ValueChanged<ThemeMode>? onThemeModeChanged;
  Future<void> Function()? onLogout;

  ValueListenable<AppSidebarItem> get activeItemListenable => _activeItem;

  ValueListenable<InstanceInfo> get instanceInfoListenable => _instanceInfo;

  AppSidebarItem get activeItem => _activeItem.value;

  void setActiveItem(AppSidebarItem item) {
    if (_activeItem.value == item) return;
    _activeItem.value = item;
  }

  /// Loads version and team name; each is optional and fails independently.
  Future<void> loadInstanceInfo() async {
    final CoolifyApi api;
    try {
      api = await CoolifyClientService.createClient();
    } catch (_) {
      return;
    }

    final results = await Future.wait<String?>([
      api.defaultApi.version().then<String?>((v) => v).catchError((_) => null),
      api.teams
          .getTokenTeam()
          .then<String?>((t) => t?.name)
          .catchError((_) => null),
    ]);

    final version = results[0];
    _instanceInfo.value = InstanceInfo(
      version: version == null || version.isEmpty ? null : version,
      teamName: results[1],
    );
  }
}
