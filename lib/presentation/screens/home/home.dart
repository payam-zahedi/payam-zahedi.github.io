import 'package:flutter/material.dart';
import 'package:portfolio/presentation/screens/home/widget/src/what_i_do.dart';
import 'package:portfolio/presentation/widgets/text/text_hint.dart';
import 'widget/index.dart';
import 'package:portfolio/responsive/responsive.dart';
import 'package:portfolio/util/index.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
            SliverToBoxAdapter(
              child: TextHint(text: 'What I Do'),
            ),
            SliverToBoxAdapter(
              child: WhatIDoWidget(),
            ),
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
    );
  }
}

