import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/timeline_tile.dart';
import 'package:portfolio/responsive/responsive.dart';
import 'package:portfolio/util/index.dart';

class ExperienceWidget extends StatelessWidget {
  const ExperienceWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final experiences = [
      SizedBox(
        child: TimeLineTile(
          position: context.localization.founder,
          description: context.localization.persianFlutterCommunityDescription,
          title: context.localization.persianFlutterCommunity,
          date: '2021',
        ),
      ),
      SizedBox(
        child: TimeLineTile(
          position: context.localization.mobileDeveloper,
          description: context.localization.rasecretDescription,
          title: context.localization.raSecretApplication,
          date: '2019-2020',
        ),
      ),
      SizedBox(
        child: TimeLineTile(
          position: context.localization.flutterDeveloper,
          description: context.localization.droppCommerceDescription,
          title: context.localization.droppCommerceApplication,
          date: '2018-2019',
        ),
      ),
    ];

    return ResponsiveBuilder(builder: (context, platform) {
      return Table(
        children: _buildTableRow(experiences, platform)
            .map((experience) => TableRow(children: experience))
            .toList(),
      );
    });
  }

  List<List<Widget>> _buildTableRow(
      List<Widget> experiences, ResponsivePlatform platform) {
    final columnCount = _responsiveColumns(platform);

    final partition = <List<Widget>>[];
    for (var i = 0; i < experiences.length; i += columnCount) {
      final count = (i + columnCount > experiences.length
          ? experiences.length
          : i + columnCount);
      partition.add(experiences.sublist(i, count));
    }
    while (partition.last.length < columnCount) {
      partition.last.add(SizedBox.shrink());
    }
    return partition;
  }

  int _responsiveColumns(ResponsivePlatform platform) =>
      platform.isDesktop ? 2 : 1;
}
