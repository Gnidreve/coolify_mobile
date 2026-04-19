import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    this.leading,
  });

  final String title;
  final String subtitle;
  final String tertiary;
  final VoidCallback? onTap;
  final Widget? trailing;
  final Color? statusColor;
  final bool? showChevron;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);
    final shouldShowChevron = showChevron ?? (statusColor == null);

    return ShadCard(
      padding: EdgeInsets.zero,
      backgroundColor: theme.colorScheme.background,
      child: InkWell(
        borderRadius: theme.radius,
        onTap: onTap,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (leading != null) ...[
                    leading!,
                    const SizedBox(width: 12),
                  ],
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.p.copyWith(
                            fontWeight: FontWeight.w600,
                            color: theme.colorScheme.foreground,
                          ),
                        ),
                        if (subtitle.isNotEmpty) ...[
                          const SizedBox(height: 4),
                          Text(
                            subtitle,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.muted.copyWith(
                              fontSize: 13,
                              height: 1.3,
                            ),
                          ),
                        ],
                        if (tertiary.isNotEmpty) ...[
                          const SizedBox(height: 2),
                          Text(
                            tertiary,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.muted.copyWith(
                              fontSize: 12,
                              height: 1.3,
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
                          size: 16,
                          color: theme.colorScheme.mutedForeground,
                        ),
                  ],
                ],
              ),
            ),
            if (statusColor != null)
              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  width: 8,
                  height: 8,
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

class ResourceCardAssetIcon extends StatelessWidget {
  const ResourceCardAssetIcon({
    super.key,
    required this.assetDirectory,
    required this.assetName,
    this.fallbackIcon = LucideIcons.imageOff,
  });

  final String assetDirectory;
  final String assetName;
  final IconData fallbackIcon;

  List<String> get _candidateAssetPaths {
    final normalized = assetName.trim().replaceAll(RegExp(r'\s+'), '_');
    final compactLower = normalized.toLowerCase();
    final compactUpper = normalized.toUpperCase();

    return {
      '$assetDirectory/$normalized.svg',
      '$assetDirectory/$compactLower.svg',
      '$assetDirectory/$compactUpper.svg',
    }.toList();
  }

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);
    final candidates = _candidateAssetPaths;

    return SizedBox(
      width: 28,
      height: 28,
      child: FutureBuilder(
        future: _resolveExistingAsset(candidates),
        builder: (context, snapshot) {
          final resolvedAssetPath = snapshot.data;
          if (resolvedAssetPath != null) {
            return SvgPicture.asset(
              resolvedAssetPath,
              width: 28,
              height: 28,
              fit: BoxFit.contain,
            );
          }

          return DecoratedBox(
            decoration: BoxDecoration(
              color: theme.colorScheme.muted,
              borderRadius: theme.radius,
            ),
            child: Icon(
              fallbackIcon,
              size: 16,
              color: theme.colorScheme.mutedForeground,
            ),
          );
        },
      ),
    );
  }

  Future<String?> _resolveExistingAsset(List<String> candidates) async {
    for (final candidate in candidates) {
      try {
        await rootBundle.load(candidate);
        return candidate;
      } catch (_) {
        continue;
      }
    }
    return null;
  }
}
