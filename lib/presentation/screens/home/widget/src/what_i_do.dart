import 'package:flutter/material.dart';
import 'package:fluttericon/linecons_icons.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/presentation/widgets/responsive/index.dart';
import 'package:portfolio/responsive/responsive.dart';

import 'home_tile.dart';

class WhatIDoWidget extends StatelessWidget {
  const WhatIDoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final whatIDo = [
      HomeTile(
        title: S.of(context).softwareDeveloper,
        description: S.of(context).softwareDeveloperDescription,
        iconData: Linecons.desktop,
      ),
      HomeTile(
        title: S.of(context).openSource,
        description: S.of(context).openSourceDescription,
        iconData: Linecons.globe,
      ),
      Center(
        child: HomeTile(
          title: S.of(context).speaker,
          description: S.of(context).speakerDescription,
          iconData: Linecons.lightbulb,
        ),
      ),
      Center(
        child: HomeTile(
          title: S.of(context).designTools,
          description: S.of(context).designToolsDescription,
          iconData: Linecons.beaker,
        ),
      ),
    ];
    return ResponsiveBuilder(builder: (context, platform) {
      return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: platform == ResponsivePlatform.tablet ? 8 : 0),
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.top,
          children: platform == ResponsivePlatform.desktop
              ? [
                  TableRow(children: whatIDo.sublist(0, 2)),
                  TableRow(children: whatIDo.sublist(2, 4)),
                ]
              : whatIDo.map((e) => TableRow(children: [e])).toList(),
        ),
      );
    });
  }
}
