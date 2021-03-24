import 'package:flutter/material.dart';

class TextHint extends StatelessWidget {
  TextHint({
    Key? key,
    required this.text,
    this.dividerValue = 0.3,
  })  : _textPainter = TextPainter(),
        super(key: key);

  final String text;
  final double dividerValue;

  final TextPainter _textPainter;

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
        TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w900,
        );
    final txtSize = _textSize(text, textStyle, Directionality.of(context));

    return Container(
      width: txtSize.width,
      child: Column(
        children: <Widget>[
          Text(
            text,
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

  Size _textSize(String text, TextStyle style, TextDirection direction) {
    _textPainter
      ..text = TextSpan(text: text, style: style)
      ..maxLines = 1
      ..textDirection = direction
      ..layout(minWidth: 0, maxWidth: double.infinity);
    return _textPainter.size;
  }
}
