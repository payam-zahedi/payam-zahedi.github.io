import 'package:flutter/material.dart';

class TimeLineTile extends StatelessWidget {
  const TimeLineTile({
    Key? key,
    required this.title,
    required this.position,
    required this.description,
    this.date,
  }) : super(key: key);

  final String title;
  final String position;
  final String description;
  final String? date;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    const startPadding = EdgeInsetsDirectional.only(start: 40.0, top: 4);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              if (date?.isNotEmpty ?? false)
                Material(
                  elevation: 0,
                  color: Colors.transparent,
                  shape: StadiumBorder(
                    side: BorderSide(
                      color: scheme.primary,
                      width: 2,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14.0,
                      vertical: 3,
                    ),
                    child: Text(
                      date!,
                      style: theme.textTheme.bodyText2,
                    ),
                  ),
                ),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  title,
                  style: theme.textTheme.caption?.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
          SizedBox(height: 8),
          Padding(
            padding: startPadding,
            child: Text(
              position,
              style: theme.textTheme.headline6?.copyWith(
                  fontWeight: FontWeight.bold,
                  wordSpacing: 1,
                  letterSpacing: .8),
            ),
          ),
          Padding(
            padding: startPadding,
            child: Text(
              description,
              style: DefaultTextStyle.of(context).style.copyWith(
                    fontSize: 13,
                  ),
              strutStyle: StrutStyle(
                forceStrutHeight: false,
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
