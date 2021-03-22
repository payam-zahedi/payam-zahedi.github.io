import 'package:flutter/material.dart';

class TextHint extends StatelessWidget {
  const TextHint({
    Key? key,
    required this.text,
    this.dividerValue = 0.3,
  }) : super(key: key);

  final String text;
  final double dividerValue;

  @override
  Widget build(BuildContext context) {
    final dividerPercent = dividerValue >= 1.0
        ? 1.0
        : dividerValue <= 0.0
        ? 0.0
        : dividerValue;
    final theme = Theme.of(context);
    final textStyle = theme.textTheme.headline6?.copyWith(
      fontSize: 22,
      fontWeight: FontWeight.w900,
    ) ??
        TextStyle(fontSize: 22, fontWeight: FontWeight.w900);
    final txtSize = _textSize(text, textStyle);

    return Container(
      width: txtSize.width,
      child: Column(
        children: <Widget>[
          Text(
            'What I Do',
            style: textStyle,
            softWrap: false,
            overflow: TextOverflow.clip,
            maxLines: 1,
          ),
          SizedBox(height: 8),
          LinearProgressIndicator(
            minHeight: 2,
            backgroundColor: theme.dividerColor,
            valueColor: AlwaysStoppedAnimation(
              theme.colorScheme.primary,
            ),
            value: dividerPercent,
          ),
        ],
      ),
    );
  }

  Size _textSize(String text, TextStyle style) {
    final textPainter = TextPainter(
        text: TextSpan(text: text, style: style),
        maxLines: 1,
        textDirection: TextDirection.ltr)
      ..layout(minWidth: 0, maxWidth: double.infinity);
    return textPainter.size;
  }
}
