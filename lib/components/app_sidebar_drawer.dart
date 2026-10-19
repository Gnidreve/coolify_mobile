import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:url_launcher/url_launcher.dart';

import '../core/services/app_shell_service.dart';
import '../core/services/app_toast.dart';
import '../core/services/credentials_service.dart';
import '../core/services/preferences_service.dart';

const _docsUrl = 'https://coolify.io/docs';
const _releasesUrl = 'https://github.com/coollabsio/coolify/releases';
const _feedbackUrl = 'https://github.com/gnidreve/coolify_mobile/issues';
const _sponsorUrl = 'https://coolify.io/sponsorships';

class AppSidebarDrawer extends StatelessWidget {
  const AppSidebarDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);

    return Drawer(
      width: 288,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const _SidebarHeader(),
            Expanded(
              child: ValueListenableBuilder<AppSidebarItem>(
                valueListenable: AppShellService.instance.activeItemListenable,
                builder: (context, active, _) {
                  return ListView(
                    padding: const EdgeInsets.fromLTRB(12, 4, 12, 12),
                    children: [
                      for (final group in AppSidebarGroup.values) ...[
                        _GroupLabel(group.label),
                        for (final item in AppSidebarItem.values.where(
                          (item) => item.group == group,
                        ))
                          _SidebarTile(
                            item: item,
                            isActive: item == active,
                            onTap: () => _navigate(context, item),
                          ),
                        const SizedBox(height: 12),
                      ],
                    ],
                  );
                },
              ),
            ),
            Divider(height: 1, color: theme.colorScheme.border),
            const Padding(padding: EdgeInsets.all(12), child: _UserMenu()),
          ],
        ),
      ),
    );
  }

  void _navigate(BuildContext context, AppSidebarItem item) {
    final rootNavigator = Navigator.of(context, rootNavigator: true);
    Navigator.of(context).pop();

    SchedulerBinding.instance.addPostFrameCallback((_) {
      AppShellService.instance.setActiveItem(item);
      rootNavigator.popUntil((route) => route.isFirst);
    });
  }
}

class _SidebarHeader extends StatelessWidget {
  const _SidebarHeader();

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 16, 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Text(
            'Coolify',
            style: theme.textTheme.h4.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(width: 8),
          ValueListenableBuilder<InstanceInfo>(
            valueListenable: AppShellService.instance.instanceInfoListenable,
            builder: (context, info, _) {
              final version = info.version;
              if (version == null) return const SizedBox.shrink();
              return Text(
                version.startsWith('v') ? version : 'v$version',
                style: theme.textTheme.small.copyWith(
                  color: theme.colorScheme.mutedForeground,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _GroupLabel extends StatelessWidget {
  const _GroupLabel(this.label);

  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);

    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 12, 8, 6),
      child: Text(
        label,
        style: theme.textTheme.small.copyWith(
          color: theme.colorScheme.mutedForeground,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class _SidebarTile extends StatelessWidget {
  const _SidebarTile({
    required this.item,
    required this.isActive,
    required this.onTap,
  });

  final AppSidebarItem item;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);

    return _MenuRow(
      icon: item.icon,
      label: item.label,
      onTap: onTap,
      background: isActive ? theme.colorScheme.accent : null,
      fontWeight: isActive ? FontWeight.w600 : FontWeight.w500,
    );
  }
}

class _MenuRow extends StatelessWidget {
  const _MenuRow({
    required this.icon,
    required this.label,
    required this.onTap,
    this.background,
    this.fontWeight = FontWeight.w500,
    this.color,
    this.trailing,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final Color? background;
  final FontWeight fontWeight;
  final Color? color;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);
    final foreground = color ?? theme.colorScheme.foreground;

    return Material(
      color: background ?? Colors.transparent,
      borderRadius: theme.radius,
      child: InkWell(
        borderRadius: theme.radius,
        onTap: onTap,
        child: Container(
          height: 44,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              Icon(icon, size: 20, color: color ?? foreground),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.p.copyWith(
                    fontSize: 15,
                    fontWeight: fontWeight,
                    color: foreground,
                  ),
                ),
              ),
              ?trailing,
            ],
          ),
        ),
      ),
    );
  }
}

class _UserMenu extends StatefulWidget {
  const _UserMenu();

  @override
  State<_UserMenu> createState() => _UserMenuState();
}

class _UserMenuState extends State<_UserMenu> {
  final _popover = ShadPopoverController();
  bool _appearanceOpen = false;

  @override
  void dispose() {
    _popover.dispose();
    super.dispose();
  }

  Future<void> _open(String url) async {
    _popover.hide();
    final ok = await launchUrl(
      Uri.parse(url),
      mode: LaunchMode.externalApplication,
    );
    if (!ok && mounted) {
      AppToast.error(context, 'Could not open $url');
    }
  }

  Future<void> _openProfile() async {
    final baseUrl = await CredentialsService.instance.getBaseUrl();
    if (baseUrl == null || baseUrl.isEmpty) return;
    await _open('$baseUrl/profile');
  }

  Future<void> _logout() async {
    _popover.hide();
    final confirmed = await showShadDialog<bool>(
      context: context,
      builder: (context) => ShadDialog.alert(
        title: const Text('Log out?'),
        description: const Text(
          'The stored URL and API token are removed from this device.',
        ),
        actions: [
          ShadButton.outline(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          ShadButton.destructive(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Log out'),
          ),
        ],
      ),
    );
    if (confirmed != true) return;
    await AppShellService.instance.onLogout?.call();
  }

  void _setTheme(ThemeMode mode) {
    AppShellService.instance.onThemeModeChanged?.call(mode);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);
    final mode = PreferencesService.instance.getThemeMode();

    return ValueListenableBuilder<InstanceInfo>(
      valueListenable: AppShellService.instance.instanceInfoListenable,
      builder: (context, info, _) {
        final name = info.teamName ?? 'Coolify';

        return ShadPopover(
          controller: _popover,
          padding: EdgeInsets.zero,
          popover: (context) => StatefulBuilder(
            builder: (context, setPopoverState) => SizedBox(
              width: 264,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(name, style: theme.textTheme.large),
                          Text('Current team', style: theme.textTheme.muted),
                        ],
                      ),
                    ),
                    Divider(height: 9, color: theme.colorScheme.border),
                    _MenuRow(
                      icon: LucideIcons.user,
                      label: 'Profile',
                      onTap: _openProfile,
                    ),
                    _MenuRow(
                      icon: LucideIcons.settings,
                      label: 'Appearance',
                      onTap: () => setPopoverState(
                        () => _appearanceOpen = !_appearanceOpen,
                      ),
                      trailing: Icon(
                        _appearanceOpen
                            ? LucideIcons.chevronUp
                            : LucideIcons.chevronDown,
                        size: 18,
                        color: theme.colorScheme.mutedForeground,
                      ),
                    ),
                    if (_appearanceOpen)
                      for (final option in const [
                        (ThemeMode.light, 'Light', LucideIcons.sun),
                        (ThemeMode.dark, 'Dark', LucideIcons.moon),
                        (ThemeMode.system, 'System', LucideIcons.monitor),
                      ])
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: _MenuRow(
                            icon: option.$3,
                            label: option.$2,
                            fontWeight: mode == option.$1
                                ? FontWeight.w700
                                : FontWeight.w500,
                            onTap: () {
                              _setTheme(option.$1);
                              setPopoverState(() {});
                            },
                          ),
                        ),
                    Divider(height: 9, color: theme.colorScheme.border),
                    _MenuRow(
                      icon: LucideIcons.sparkles,
                      label: "What's New",
                      onTap: () => _open(_releasesUrl),
                    ),
                    _MenuRow(
                      icon: LucideIcons.fileText,
                      label: 'Documentation',
                      onTap: () => _open(_docsUrl),
                    ),
                    _MenuRow(
                      icon: LucideIcons.lifeBuoy,
                      label: 'Feedback',
                      onTap: () => _open(_feedbackUrl),
                    ),
                    _MenuRow(
                      icon: LucideIcons.heart,
                      label: 'Sponsor us',
                      color: const Color(0xFFEC4899),
                      onTap: () => _open(_sponsorUrl),
                    ),
                    Divider(height: 9, color: theme.colorScheme.border),
                    _MenuRow(
                      icon: LucideIcons.logOut,
                      label: 'Log out',
                      onTap: _logout,
                    ),
                  ],
                ),
              ),
            ),
          ),
          child: InkWell(
            borderRadius: theme.radius,
            onTap: () {
              _appearanceOpen = false;
              _popover.toggle();
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 16,
                    backgroundColor: theme.colorScheme.primary,
                    child: Text(
                      name.characters.first.toUpperCase(),
                      style: theme.textTheme.small.copyWith(
                        color: theme.colorScheme.primaryForeground,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.p.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Icon(
                    LucideIcons.chevronUp,
                    size: 18,
                    color: theme.colorScheme.mutedForeground,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
