import 'package:flutter/material.dart';
import 'package:fluttericon/linecons_icons.dart';
import 'widget/index.dart';


class HomeScreen extends StatelessWidget {
  //ToDo(payam) : add project section
  //ToDo(payam) : add skills section
  //ToDo(payam) : add code lab
  //ToDo(payam) : add fun fact
  @override
  Widget build(BuildContext context) {
    // final localization = S.of(context);
    return Scaffold(
      body: Scrollbar(
        isAlwaysShown: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 64),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: AboutMe()),
              SliverToBoxAdapter(
                child: Center(
                  child: Text('Find Me in Socials'),
                ),
              ),
              SliverToBoxAdapter(
                child: Center(
                  child: SocialLinksWidget(),
                ),
              )
              // SliverStaggeredGrid.extent(
              //   maxCrossAxisExtent: 130,
              //   staggeredTiles: [
              //     StaggeredTile.extent(1, 100),
              //     StaggeredTile.extent(1, 100),
              //     StaggeredTile.extent(1, 100),
              //     StaggeredTile.extent(1, 100),
              //     StaggeredTile.extent(1, 100),
              //     StaggeredTile.extent(1, 100),
              //   ],
              //   children: [
              //     SocialLink(
              //       url: 'https://twitter.com/payamzahedi95/',
              //       imagePath: 'assets/icon/social/twitter.png',
              //       title: 'Twitter',
              //     ),
              //     SocialLink(
              //       url: 'https://github.com/payam-zahedi',
              //       imagePath: 'assets/icon/social/github.png',
              //       title: 'Github',
              //     ),
              //     SocialLink(
              //       url: 'https://www.linkedin.com/in/payamzahedi95/',
              //       imagePath: 'assets/icon/social/linkedin.png',
              //       title: 'LinkedIn',
              //     ),
              //     SocialLink(
              //       url: 'https://medium.com/@payam-zahedi/',
              //       imagePath: 'assets/icon/social/medium.png',
              //       title: 'Medium',
              //     ),
              //     SocialLink(
              //       url: 'https://stackoverflow.com/users/9689717/payam-zahedi?tab=profile/',
              //       imagePath: 'assets/icon/social/stackoverflow.png',
              //       title: 'Stack Overflow',
              //     ),
              //     SocialLink(
              //       url: 'https://t.me/payamzahedi95/',
              //       imagePath: 'assets/icon/social/telegram.png',
              //       title: 'Telegram',
              //     ),
              //   ],
              // ),
              // SliverToBoxAdapter(
              //   child: TextHint(text: 'What I Do'),
              // ),
              // SliverStaggeredGrid.extent(
              //   maxCrossAxisExtent: 600,
              //   staggeredTiles: [
              //     StaggeredTile.fit(1),
              //     StaggeredTile.fit(1),
              //     StaggeredTile.fit(1),
              //     StaggeredTile.fit(1),
              //   ],
              //   children: [
              //     Center(
              //       child: CustomTile(
              //         title: 'Open Source',
              //         description: localization.defaultDescription,
              //         iconData: Linecons.pencil,
              //       ),
              //     ),
              //     Center(
              //       child: CustomTile(
              //         title: 'Open Source',
              //         description: localization.defaultDescription,
              //         iconData: Linecons.pencil,
              //       ),
              //     ),
              //     Center(
              //       child: CustomTile(
              //         title: 'Open Source',
              //         description: localization.defaultDescription,
              //         iconData: Linecons.pencil,
              //       ),
              //     ),
              //     Center(
              //       child: CustomTile(
              //         title: 'Open Source',
              //         description: localization.defaultDescription,
              //         iconData: Linecons.pencil,
              //       ),
              //     ),
              //   ],
              // ),
              // SliverToBoxAdapter(child: TextHint(text: 'Education')),
              // SliverStaggeredGrid.extent(
              //   maxCrossAxisExtent: 600,
              //   staggeredTiles: [
              //     StaggeredTile.fit(1),
              //     StaggeredTile.fit(1),
              //     StaggeredTile.fit(1),
              //   ],
              //   children: [
              //     TimeLineTile(
              //       position: 'Graphic Design',
              //       description: S.of(context).defaultDescription,
              //       title: 'university',
              //       date: '2019 - 2020',
              //     ),
              //     TimeLineTile(
              //       position: 'Graphic Design',
              //       description: S.of(context).defaultDescription,
              //       title: 'university',
              //       date: '2019',
              //     ),
              //     TimeLineTile(
              //       position: 'Graphic Design',
              //       description: S.of(context).defaultDescription,
              //       title: 'university',
              //       date: '2020',
              //     ),
              //   ],
              // ),
              // SliverToBoxAdapter(
              //   child: TextHint(text: 'Experience'),
              // ),
              // SliverStaggeredGrid.extent(
              //   key: ValueKey('Experience'),
              //   maxCrossAxisExtent: 600,
              //   staggeredTiles: [
              //     StaggeredTile.fit(1),
              //     StaggeredTile.fit(1),
              //     StaggeredTile.fit(1),
              //   ],
              //   children: [
              //     TimeLineTile(
              //       position: 'Graphic Design',
              //       description: S.of(context).defaultDescription,
              //       title: 'university',
              //       date: '2019 - 2020',
              //     ),
              //     TimeLineTile(
              //       position: 'Graphic Design',
              //       description: S.of(context).defaultDescription,
              //       title: 'university',
              //       date: '2019',
              //     ),
              //     TimeLineTile(
              //       position: 'Graphic Design',
              //       description: S.of(context).defaultDescription,
              //       title: 'university',
              //       date: '2020',
              //     ),
              //   ],
              // ),
              // SliverToBoxAdapter(
              //   child: TextHint(text: 'Skills'),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTile extends StatelessWidget {
  const CustomTile({
    Key? key,
    required this.title,
    this.description,
    this.iconData,
  }) : super(key: key);

  final String title;
  final String? description;
  final IconData? iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTileTheme(
        iconColor: Theme.of(context).colorScheme.primary,
        child: ListTile(
          leading: iconData != null
              ? Icon(
                  Linecons.pencil,
                  size: 33,
                )
              : null,
          title: SelectableText(
            title,
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          subtitle: description != null
              ? SelectableText(
                  description!,
                )
              : null,
          minVerticalPadding: 8,
          horizontalTitleGap: 24,
        ),
      ),
    );
  }
}
