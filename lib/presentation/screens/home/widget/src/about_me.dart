import 'package:flutter/material.dart';
import 'package:portfolio/responsive/responsive.dart';
import 'package:portfolio/resource/index.dart';
import 'package:portfolio/util/index.dart';
import 'package:url_launcher/link.dart';

import 'avatar.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final localization = context.localization;

    return ResponsiveBuilder(
      builder: (context, platform) {
        final developerName = SelectableText(
          '${localization.name} ${localization.family}',
          style: textTheme.displaySmall?.copyWith(fontWeight: FontWeight.bold),
        );
        final jobTitle = SelectableText(context.localization.softwareDeveloper,
            style: textTheme.titleMedium);
        final imageAvatar = ImageAvatar(imageUrl: defaultImageAvatarUrl);
        final description = SelectableText(
          localization.profileDescription,
          style: textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w600),
          textAlign: TextAlign.start,
          strutStyle: StrutStyle(),
        );
        final downloadButton = Link(
            uri: Uri.parse(cvUrl),
            target: LinkTarget.blank,
            builder:
                (BuildContext context, Future<void> Function()? followLink) {
              return ElevatedButton(
                onPressed: followLink,
                style: ElevatedButton.styleFrom(),
                child: Text(context.localization.cvButton),
              );
            });

        final hireButton = Link(
            uri: Uri.parse(mailtoUrl),
            target: LinkTarget.blank,
            builder:
                (BuildContext context, Future<void> Function()? followLink) {
              return ElevatedButton(
                onPressed: followLink,
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(
                    side: BorderSide(
                      color: portfolioGrey200,
                      width: 2,
                    ),
                  ),
                ),
                child: Text(context.localization.hireMe),
              );
            });

        if (platform == ResponsivePlatform.mobile) {
          return Column(
            children: <Widget>[
              imageAvatar,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  jobTitle,
                  developerName,
                  SizedBox(height: 12),
                  description,
                  SizedBox(height: 32),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          width: double.infinity,
                          child: downloadButton,
                        ),
                        SizedBox(height: 4),
                        SizedBox(
                          width: double.infinity,
                          child: hireButton,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          );
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  flex: context.isTablet() ? 3 : 2,
                  child: imageAvatar,
                ),
                Expanded(
                  flex: context.isTablet() ? 4 : 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      jobTitle,
                      developerName,
                      SizedBox(height: 12),
                      description,
                      SizedBox(height: 32),
                      if (platform == ResponsivePlatform.desktop)
                        Row(
                          children: <Widget>[
                            downloadButton,
                            SizedBox(width: 4),
                            hireButton,
                          ],
                        ),
                    ],
                  ),
                ),
              ],
            ),
            if (platform == ResponsivePlatform.tablet)
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    downloadButton,
                    SizedBox(width: 4),
                    hireButton,
                  ],
                ),
              ),
          ],
        );
      },
    );
  }
}
