import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/responsive/index.dart';
import 'package:portfolio/presentation/widgets/text/text_hint.dart';
import 'package:portfolio/resource/constant/skill.dart';
import 'package:portfolio/responsive/responsive.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, platform) {
      return Table(
        children: _tableChildren(platform),
      );
    });
  }

  List<TableRow> _tableChildren(ResponsivePlatform platform) {
    final skills = [
      SizedBox(child: SkillSection(title: 'SoftWere Skills', skills: softwareSkills)),
      SizedBox(child: SkillSection(title: 'Flutter Skills', skills: flutterSkills)),
      SizedBox(child: SkillSection(title: 'Android Skills', skills: androidSkills)),
      SizedBox(child: SkillSection(title: 'Design Skills', skills: designSkills)),
    ];

    final columnCount = _responsiveColumns(platform);

    final partition = <List<Widget>>[];
    for (var i = 0; i < skills.length; i += columnCount) {
      final count = (i + columnCount > skills.length ? skills.length : i + columnCount);
      partition.add(skills.sublist(i, count));
    }
    while (partition.last.length < columnCount) {
      partition.last.add(SizedBox.shrink());
    }
    return partition.map((experience) => TableRow(children: experience)).toList();
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

  final List<String> skills;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextHint(text: title),
        Wrap(
          alignment: WrapAlignment.start,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 8,
          runSpacing: 8,
          children: skills
              .map(
                (item) => Material(
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
                      item,
                      style: theme.textTheme.bodyText2,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
