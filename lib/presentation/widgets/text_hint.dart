import 'package:flutter/material.dart';

class TextHint extends StatelessWidget {
  TextHint({
    Key? key,
    required this.text,
    this.dividerValue = 0.3,
  }) : super(key: key);

  final String text;
  final double dividerValue;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textStyle = theme.textTheme.headline6?.copyWith(
          fontSize: 22,
          fontWeight: FontWeight.w900,
        ) ??
        TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w900,
        );

    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: 2,
          ),
        ),
      ),
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
        ],
      ),
    );
  }
}
