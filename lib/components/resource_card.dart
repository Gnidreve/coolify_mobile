import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class ResourceCard extends StatelessWidget {
  const ResourceCard({
    super.key,
    required this.title,
    this.subtitle = '',
    this.tertiary = '',
    this.onTap,
    this.trailing,
    this.statusColor,
    this.showChevron,
  });

  final String title;
  final String subtitle;
  final String tertiary;
  final VoidCallback? onTap;
  final Widget? trailing;
  final Color? statusColor;
  final bool? showChevron;

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);
    final shouldShowChevron = showChevron ?? (statusColor == null);

    return ShadCard(
      backgroundColor: theme.colorScheme.background,
      child: InkWell(
        borderRadius: BorderRadius.circular(18),
        onTap: onTap,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 16, 18, 16),
              child: ConstrainedBox(
                constraints: const BoxConstraints(minHeight: 68),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.large.copyWith(
                              fontWeight: FontWeight.w700,
                              color: theme.colorScheme.foreground,
                            ),
                          ),
                          if (subtitle.isNotEmpty) ...[
                            const SizedBox(height: 10),
                            Text(
                              subtitle,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.muted.copyWith(
                                fontSize: 14,
                                height: 1.15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                          if (tertiary.isNotEmpty) ...[
                            const SizedBox(height: 6),
                            Text(
                              tertiary,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.muted.copyWith(
                                fontSize: 13.5,
                                height: 1.15,
                                color: theme.colorScheme.mutedForeground,
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                    if (trailing != null || shouldShowChevron) ...[
                      const SizedBox(width: 12),
                      trailing ??
                          Icon(
                            LucideIcons.chevronRight,
                            size: 18,
                            color: theme.colorScheme.mutedForeground,
                          ),
                    ],
                  ],
                ),
              ),
            ),
            if (statusColor != null)
              Positioned(
                top: 12,
                right: 12,
                child: Container(
                  width: 9,
                  height: 9,
                  decoration: BoxDecoration(
                    color: statusColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
