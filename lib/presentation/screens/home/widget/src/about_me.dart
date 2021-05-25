import 'package:flutter/material.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/presentation/widgets/responsive/src/responsive_builder.dart';
import 'package:portfolio/responsive/responsive.dart';
import 'package:portfolio/theme/colors.dart';

import 'avatar.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localization = S.of(context);
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return ResponsiveBuilder(builder: (context, platform) {
      if (platform == ResponsivePlatform.mobile) {
        return Column(
          children: <Widget>[
            ImageAvatar(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SelectableText('Software Developer', style: textTheme.subtitle1),
                SelectableText(
                  'Payam Zahedi',
                  style: textTheme.headline3?.copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 12),
                SelectableText(
                  localization.defaultDescription,
                  style: textTheme.caption?.copyWith(fontWeight: FontWeight.w600),
                  textAlign: TextAlign.justify,
                  strutStyle: StrutStyle(),
                ),
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
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                          ),
                          child: Text('Download CV'),
                        ),
                      ),
                      SizedBox(height: 4),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(
                              side: BorderSide(
                                color: portfolioGrey200,
                                width: 2,
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: Text('Contact'),
                        ),
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
              Expanded(flex:context.isTablet()? 3 : 2, child: ImageAvatar()),
              Expanded(
                flex:context.isTablet()? 4 : 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SelectableText('Software Developer', style: textTheme.subtitle1),
                    SelectableText(
                      'Alex Smith',
                      style: textTheme.headline3?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 12),
                    SelectableText(
                      localization.defaultDescription,
                      style: textTheme.caption?.copyWith(fontWeight: FontWeight.w600),
                      strutStyle: StrutStyle(),
                    ),
                    SizedBox(height: 32),
                    if (platform == ResponsivePlatform.desktop)
                      Row(
                        children: <Widget>[
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('Download CV'),
                          ),
                          SizedBox(width: 4),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: StadiumBorder(
                                side: BorderSide(
                                  color: portfolioGrey200,
                                  width: 2,
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: Text('Contact'),
                          ),
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
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Download CV'),
                  ),
                  SizedBox(width: 4),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(
                        side: BorderSide(
                          color: portfolioGrey200,
                          width: 2,
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text('Contact'),
                  ),
                ],
              ),
            ),
        ],
      );
    });
  }
}
