import 'package:flutter/material.dart';
import 'package:portfolio/model/skill.dart';
import 'package:portfolio/presentation/widgets/adaptive_tag.dart';
import 'package:portfolio/presentation/widgets/text/text_hint.dart';
import 'package:portfolio/resource/constant/skill.dart';
import 'package:portfolio/responsive/responsive.dart';
import 'package:portfolio/util/index.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, platform) {
      return Table(
        children: _tableChildren(context, platform),
      );
    });
  }

  List<TableRow> _tableChildren(
      BuildContext context, ResponsivePlatform platform) {
    final skills = [
      SizedBox(
        child: SkillSection(
            title: context.localization.softwareSkills, skills: softwareSkills),
      ),
      SizedBox(
        child: SkillSection(
            title: context.localization.flutterSkills, skills: flutterSkills),
      ),
      SizedBox(
        child: SkillSection(
            title: context.localization.androidSkills, skills: androidSkills),
      ),
      SizedBox(
        child: SkillSection(
            title: context.localization.designSkills, skills: designSkills),
      ),
    ];

    final columnCount = _responsiveColumns(platform);

    final partition = <List<Widget>>[];
    for (var i = 0; i < skills.length; i += columnCount) {
      final count =
          (i + columnCount > skills.length ? skills.length : i + columnCount);
      partition.add(skills.sublist(i, count));
    }
    while (partition.last.length < columnCount) {
      partition.last.add(SizedBox.shrink());
    }
    return partition
        .map((experience) => TableRow(children: experience))
        .toList();
  }

  int _responsiveColumns(ResponsivePlatform platform) => platform.isDesktop
      ? 3
      : platform.isTablet
          ? 2
          : 1;
}

class SkillSection extends StatelessWidget {
  const SkillSection({
    Key? key,
    required this.title,
    required this.skills,
  }) : super(key: key);

  final String title;

  final List<SkillModel> skills;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextHint(
          text: title,
          style: theme.textTheme.titleLarge?.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.w900,
          ),
        ),
        Wrap(
          alignment: WrapAlignment.start,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 8,
          runSpacing: 8,
          children: skills
              .map(
                (item) => item.hasImage
                    ? AdaptiveTag(
                        tag: item.name,
                        leading: Image.network(
                          item.imageUrl!,
                          width: 12,
                          height: 12,
                        ),
                      )
                    : AdaptiveTag(
                        tag: item.name,
                      ),
              )
              .toList(),
        ),
      ],
    );
  }
}
