import 'package:flutter/material.dart';
import 'package:fluttericon/linecons_icons.dart';
import 'widget/index.dart';
import 'package:portfolio/responsive/responsive.dart';
import 'package:portfolio/util/index.dart';

class HomeScreen extends StatelessWidget {
  //ToDo(payam) : add project section
  //ToDo(payam) : add skills section
  //ToDo(payam) : add code lab
  //ToDo(payam) : add fun fact
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        isAlwaysShown: true,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 16,
            horizontal: (context.isMobile()
                ? 16
                : context.isTablet()
                    ? 24
                    : 64),
          ),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: AboutMe(),
              ),
              SliverPadding(
                padding: EdgeInsets.only(top: 32),
                sliver: SliverToBoxAdapter(
                  child: Center(
                    child: Text(
                      context.localization.socialTitle,
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                            fontSize: 16,
                        color: Theme.of(context).colorScheme.onSurface,
                        fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.only(top: 16),
                sliver: SliverToBoxAdapter(
                  child: Center(child: SocialLinksWidget()),
                ),
              ),
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
