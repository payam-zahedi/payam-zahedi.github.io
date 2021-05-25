import 'package:flutter/material.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/presentation/widgets/responsive/src/responsive_builder.dart';
import 'package:portfolio/responsive/responsive.dart';
import 'package:portfolio/resource/index.dart';
import 'package:portfolio/util/index.dart';

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
          style: textTheme.headline3?.copyWith(fontWeight: FontWeight.bold),
        );
        final jobTitle =
            SelectableText(S.of(context).softwareDeveloper, style: textTheme.subtitle1);
        final imageAvatar = ImageAvatar(imageUrl: defaultImageAvatarUrl);
        final description = SelectableText(
          localization.profileDescription,
          style: textTheme.caption?.copyWith(fontWeight: FontWeight.w600),
          textAlign: TextAlign.start,
          strutStyle: StrutStyle(),
        );
        final downloadButton = ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(),
          child: Text(S.of(context).cvButton),
        );
        final contactButton = ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(
              side: BorderSide(
                color: portfolioGrey200,
                width: 2,
              ),
            ),
          ),
          onPressed: () {},
          child: Text(S.of(context).contact),
        );


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
                          child: contactButton,
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
                            contactButton,
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
                    contactButton,
                  ],
                ),
              ),
          ],
        );
      },
    );
  }
}
