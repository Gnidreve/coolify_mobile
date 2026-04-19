import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

enum AppSidebarItem {
  dashboard,
  projects,
  servers,
  keysTokens,
  deployments,
  teams,
  settings,
}

extension AppSidebarItemX on AppSidebarItem {
  String get label => switch (this) {
    AppSidebarItem.dashboard => 'Dashboard',
    AppSidebarItem.projects => 'Projects',
    AppSidebarItem.servers => 'Servers',
    AppSidebarItem.keysTokens => 'Keys & Tokens',
    AppSidebarItem.deployments => 'Deployments',
    AppSidebarItem.teams => 'Teams',
    AppSidebarItem.settings => 'Settings',
  };

  IconData get icon => switch (this) {
    AppSidebarItem.dashboard => LucideIcons.layoutDashboard,
    AppSidebarItem.projects => LucideIcons.folder,
    AppSidebarItem.servers => LucideIcons.server,
    AppSidebarItem.keysTokens => LucideIcons.key,
    AppSidebarItem.deployments => LucideIcons.rocket,
    AppSidebarItem.teams => LucideIcons.users,
    AppSidebarItem.settings => LucideIcons.settings,
  };
}

class AppShellService {
  AppShellService._();

  static final AppShellService instance = AppShellService._();

  final ValueNotifier<AppSidebarItem> _activeItem = ValueNotifier(
    AppSidebarItem.dashboard,
  );

  ValueListenable<AppSidebarItem> get activeItemListenable => _activeItem;

  AppSidebarItem get activeItem => _activeItem.value;

  void setActiveItem(AppSidebarItem item) {
    if (_activeItem.value == item) return;
    _activeItem.value = item;
  }
}
