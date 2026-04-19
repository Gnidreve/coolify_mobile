import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../core/services/app_shell_service.dart';

class AppSidebarDrawer extends StatelessWidget {
  const AppSidebarDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Drawer(
      width: 248,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: isDark ? theme.colorScheme.background : null,
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
                      style: theme.textTheme.h4,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            Expanded(
              child: ValueListenableBuilder<AppSidebarItem>(
                valueListenable: AppShellService.instance.activeItemListenable,
                builder: (context, active, _) {
                  return ListView(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    children: AppSidebarItem.values.map((item) {
                      final isActive = item == active;
                      final primary = theme.colorScheme.primary;

                      return ListTile(
                        leading: Transform.translate(
                          offset: const Offset(3, 0),
                          child: Icon(item.icon),
                        ),
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
                        tileColor: isActive ? theme.colorScheme.background : null,
                        selectedTileColor: theme.colorScheme.background,
                        onTap: () => _navigate(context, item),
                        shape: RoundedRectangleBorder(
                          borderRadius: theme.radius,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                      );
                    }).toList(),
                  );
                },
              ),
            ),
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
