import 'package:flutter/material.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/theme/colors.dart';

import 'avatar.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localization = S.of(context);
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Row(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Expanded(flex: 2, child: ImageAvatar()),
        Expanded(
          flex: 3,
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
    );
  }
}
