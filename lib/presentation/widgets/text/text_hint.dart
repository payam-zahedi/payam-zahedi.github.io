import 'package:flutter/material.dart';

class TextHint extends StatelessWidget {
  TextHint({
    Key? key,
    required this.text,
    this.style,
    this.dividerValue = 0.3,
    this.alignment,
    this.padding,
    this.margin,
  }) : super(key: key ?? ValueKey(text));

  final String text;
  final TextStyle? style;
  final double dividerValue;
  final AlignmentGeometry? alignment;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textStyle = style ??
        theme.textTheme.titleLarge?.copyWith(
          fontSize: 22,
          fontWeight: FontWeight.w900,
        ) ??
        TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w900,
        );

    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 16.0),
        padding: EdgeInsetsDirectional.only(bottom: 8),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Theme.of(context).colorScheme.primary,
              width: 2,
            ),
          ),
        ),
        child: Text(
          text,
          style: textStyle,
          softWrap: false,
          overflow: TextOverflow.clip,
          maxLines: 1,
        ),
      ),
    );
  }
}
