import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/responsive/src/responsive_layout.dart';
import 'package:portfolio/presentation/widgets/social_link.dart';
import 'package:portfolio/util/index.dart';

class SocialLinksWidget extends StatelessWidget {
  const SocialLinksWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = context.localization;

    final socialLinks = [
      SocialLink(
        url: 'https://twitter.com/payamzahedi95/',
        imagePath: 'assets/icon/social/twitter.png',
        title: localization.twitter,
      ),
      SocialLink(
        url: 'https://github.com/payam-zahedi',
        imagePath: 'assets/icon/social/github.png',
        title: localization.github,
      ),
      SocialLink(
        url: 'https://www.linkedin.com/in/payamzahedi95/',
        imagePath: 'assets/icon/social/linkedin.png',
        title: localization.linkedIn,
      ),
      SocialLink(
        url: 'https://medium.com/@payam-zahedi/',
        imagePath: 'assets/icon/social/medium.png',
        title: localization.medium,
      ),
      SocialLink(
        url:
            'https://stackoverflow.com/users/9689717/payam-zahedi?tab=profile/',
        imagePath: 'assets/icon/social/stackoverflow.png',
        title: localization.stackOverflow,
      ),
      SocialLink(
        url: 'https://t.me/payamzahedi95/',
        imagePath: 'assets/icon/social/telegram.png',
        title: localization.telegram,
      ),
    ];

    final width = FixedColumnWidth(120);

    return ResponsiveLayout(
      mobile: Table(
        defaultColumnWidth: width,
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: [
          TableRow(children: socialLinks.sublist(0, 2).toList()),
          TableRow(children: socialLinks.sublist(2, 4).toList()),
          TableRow(children: socialLinks.sublist(4, 6).toList()),
        ],
      ),
      tablet: Table(
        defaultColumnWidth: width,
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: [
          TableRow(children: socialLinks.sublist(0, 3).toList()),
          TableRow(children: socialLinks.sublist(3, 6).toList()),
        ],
      ),
      desktop: Table(
        defaultColumnWidth: width,
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: [
          TableRow(children: socialLinks),
        ],
      ),
    );
  }
}
