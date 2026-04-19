import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

/// Renders a breadcrumb trail for AppBar titles.
/// [crumbs] is ordered from root to current page.
/// The last entry is the active page (foreground, semibold).
/// Preceding entries are muted and tappable — tapping pops back to that level.
class AppBreadcrumbs extends StatelessWidget {
  const AppBreadcrumbs({super.key, required this.crumbs});

  final List<String> crumbs;

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (int i = 0; i < crumbs.length; i++) ...[
          if (i > 0)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Icon(
                LucideIcons.chevronRight,
                size: 13,
                color: theme.colorScheme.mutedForeground,
              ),
            ),
          Flexible(
            child: i == crumbs.length - 1
                ? Text(
                    crumbs[i],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.p.copyWith(
                      fontWeight: FontWeight.w600,
                      color: theme.colorScheme.foreground,
                    ),
                  )
                : GestureDetector(
                    onTap: () {
                      final stepsBack = crumbs.length - 1 - i;
                      for (int s = 0; s < stepsBack; s++) {
                        Navigator.of(context).pop();
                      }
                    },
                    child: Text(
                      crumbs[i],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.p.copyWith(
                        color: theme.colorScheme.mutedForeground,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
          ),
        ],
      ],
    );
  }
}
