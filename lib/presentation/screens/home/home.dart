import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:fluttericon/linecons_icons.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/presentation/widgets/text_hint.dart';
import 'package:portfolio/theme/colors.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localization = S.of(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 64.0, vertical: 64),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: AboutMe(),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Container(
                  alignment: AlignmentDirectional.centerStart,
                  child: TextHint(
                    text: 'What I Do',
                  ),
                ),
              ),
            ),
            SliverStaggeredGrid.extent(
              maxCrossAxisExtent: 600,
              staggeredTiles: [
                StaggeredTile.fit(1),
                StaggeredTile.fit(1),
                StaggeredTile.fit(1),
                StaggeredTile.fit(1),
              ],
              children: [
                Center(
                  child: CustomTile(
                    title: 'Open Source',
                    description: localization.defaultDescription,
                    iconData: Linecons.pencil,
                  ),
                ),
                Center(
                  child: CustomTile(
                    title: 'Open Source',
                    description: localization.defaultDescription,
                    iconData: Linecons.pencil,
                  ),
                ),
                Center(
                  child: CustomTile(
                    title: 'Open Source',
                    description: localization.defaultDescription,
                    iconData: Linecons.pencil,
                  ),
                ),
                Center(
                  child: CustomTile(
                    title: 'Open Source',
                    description: localization.defaultDescription,
                    iconData: Linecons.pencil,
                  ),
                ),
              ],
            ),
          ],
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
          title: Text(
            title,
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          subtitle: description != null
              ? Text(
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
              Text('Software Developer', style: textTheme.subtitle1),
              Text(
                'Alex Smith',
                style:
                    textTheme.headline3?.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12),
              Text(
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

class ImageAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24),
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  width: 18, color: Theme.of(context).colorScheme.onPrimary),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 12,
                  spreadRadius: 4,
                )
              ]),
          child: ClipOval(
            child: CachedNetworkImage(
              imageUrl:
                  'https://hotfaz.ir/wp-content/uploads/2020/06/360284_857.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
