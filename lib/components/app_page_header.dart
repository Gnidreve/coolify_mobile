import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import 'app_breadcrumbs.dart';

class AppPageHeader extends StatelessWidget implements PreferredSizeWidget {
  const AppPageHeader({
    super.key,
    required this.crumbs,
    this.actions,
    this.onLeadingPressed,
  });

  final List<String> crumbs;
  final List<Widget>? actions;
  final VoidCallback? onLeadingPressed;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);

    return AppBar(
      automaticallyImplyLeading: false,
      titleSpacing: 0,
      leadingWidth: 52,
      shape: Border(
        bottom: BorderSide(
          color: theme.colorScheme.border,
          width: 1,
        ),
      ),
      leading: Builder(
        builder: (ctx) => IconButton(
          icon: const Icon(LucideIcons.panelLeft),
          onPressed: () {
            if (onLeadingPressed != null) {
              onLeadingPressed!();
              return;
            }

            final scaffold = Scaffold.maybeOf(ctx);
            if (scaffold != null && scaffold.hasDrawer) {
              scaffold.openDrawer();
            }
          },
        ),
      ),
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(width: 2),
          Container(
            width: 1,
            height: 18,
            color: theme.colorScheme.mutedForeground.withValues(alpha: 0.35),
          ),
          const SizedBox(width: 14),
          Flexible(child: AppBreadcrumbs(crumbs: crumbs)),
        ],
      ),
      actions: actions,
    );
  }
}
