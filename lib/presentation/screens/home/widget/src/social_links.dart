import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/responsive/responsive_layout.dart';
import 'package:portfolio/presentation/widgets/social_link.dart';

class SocialLinksWidget extends StatelessWidget {
  const SocialLinksWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

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


const socialLinks = [
  SocialLink(
    url: 'https://twitter.com/payamzahedi95/',
    imagePath: 'assets/icon/social/twitter.png',
    title: 'Twitter',
  ),
  SocialLink(
    url: 'https://github.com/payam-zahedi',
    imagePath: 'assets/icon/social/github.png',
    title: 'Github',
  ),
  SocialLink(
    url: 'https://www.linkedin.com/in/payamzahedi95/',
    imagePath: 'assets/icon/social/linkedin.png',
    title: 'LinkedIn',
  ),
  SocialLink(
    url: 'https://medium.com/@payam-zahedi/',
    imagePath: 'assets/icon/social/medium.png',
    title: 'Medium',
  ),
  SocialLink(
    url: 'https://stackoverflow.com/users/9689717/payam-zahedi?tab=profile/',
    imagePath: 'assets/icon/social/stackoverflow.png',
    title: 'Stack Overflow',
  ),
  SocialLink(
    url: 'https://t.me/payamzahedi95/',
    imagePath: 'assets/icon/social/telegram.png',
    title: 'Telegram',
  ),
];