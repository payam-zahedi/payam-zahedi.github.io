import 'package:flutter/material.dart';

class AdaptiveTag extends StatelessWidget {
  const AdaptiveTag({
    Key? key,
    required this.tag,
    this.style,
    this.leading,
    this.color,
    this.border,
  }) : super(key: key);

  final String tag;
  final TextStyle? style;

  final Widget? leading;

  final Color? color;
  final BorderSide? border;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final bgColor =
        color ?? ((leading == null) ? Colors.transparent : scheme.primary);
    final tagStyle = style ??
        style ??
        theme.textTheme.bodyLarge?.copyWith(
          fontSize: 12,
          color: bgColor == Colors.transparent
              ? Colors.black
              : bgColor.computeLuminance() > 0.5
                  ? Colors.black
                  : Colors.white,
        );

    return Material(
      elevation: 0,
      color: bgColor,
      shape: StadiumBorder(
        side: border ??
            BorderSide(
              color: scheme.primary,
              width: 2,
            ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 14.0,
          vertical: 3,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (leading != null) ...[
              leading!,
              SizedBox(width: 4),
            ],
            Text(
              tag,
              style: tagStyle,
            ),
          ],
        ),
      ),
    );
  }
}
