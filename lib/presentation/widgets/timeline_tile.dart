import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/adaptive_tag.dart';

class TimeLineTile extends StatelessWidget {
  const TimeLineTile({
    Key? key,
    required this.title,
    required this.position,
    required this.description,
    required this.assetImage,
    this.date,
  }) : super(key: key);

  final String title;
  final String position;
  final String description;
  final String assetImage;
  final String? date;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              if (date?.isNotEmpty ?? false) AdaptiveTag(tag: date!),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  title,
                  style: theme.textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
          SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipOval(
                child: Image.asset(
                  assetImage,
                  width: 36,
                  height: 36,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(top: 4, start: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        position,
                        style: theme.textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            wordSpacing: 1,
                            letterSpacing: .8),
                      ),
                      Text(
                        description,
                        style: DefaultTextStyle.of(context).style.copyWith(
                              fontSize: 13,
                            ),
                        strutStyle: StrutStyle(
                          forceStrutHeight: false,
                          height: 1.4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
