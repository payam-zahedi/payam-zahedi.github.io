import 'package:flutter/material.dart';
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
          horizontal: (context.isMobile()
              ? 16
              : context.isTablet()
                  ? 24
                  : 64),
        ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 32)),
            SliverToBoxAdapter(child: AboutMe()),
            SliverPadding(
              padding: EdgeInsets.only(top: 32),
              sliver: SliverToBoxAdapter(
                child: Center(
                  child: Text(
                    context.localization.socialTitle,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
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
            SliverToBoxAdapter(child: TextHint(text: 'What I Do')),
            SliverToBoxAdapter(child: WhatIDoWidget()),
            SliverToBoxAdapter(child: TextHint(text: 'Experience')),
            SliverToBoxAdapter(child: ExperienceWidget()),
            SliverToBoxAdapter(child: SkillsWidget()),
            SliverToBoxAdapter(child: SizedBox(height: 32))
          ],
        ),
      ),
    );
  }
}
