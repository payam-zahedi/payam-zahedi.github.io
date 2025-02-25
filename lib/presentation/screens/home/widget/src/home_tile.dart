import 'package:flutter/material.dart';

class HomeTile extends StatelessWidget {
  const HomeTile({
    Key? key,
    required this.title,
    this.description,
    this.iconData,
    this.minLines = 5,
  }) : super(key: key);

  final String title;
  final String? description;
  final IconData? iconData;
  final int? minLines;

  @override
  Widget build(BuildContext context) {
    return ListTileTheme(
      iconColor: Theme.of(context).colorScheme.primary,
      child: ListTile(
        leading: iconData != null
            ? Icon(
                iconData,
                size: 33,
              )
            : null,
        title: SelectableText(
          title,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        subtitle: description != null
            ? SelectableText(
                description!,
                minLines: minLines,
              )
            : null,
        minVerticalPadding: 8,
        horizontalTitleGap: 24,
      ),
    );
  }
}
