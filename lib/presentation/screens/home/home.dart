import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/theme/colors.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 64.0, vertical: 64),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: LimitedBox(
                maxWidth: 100,
                child: AboutMe(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Container(
      width: double.infinity,
      child: Row(
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
                  style: textTheme.headline3?.copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 12),
                Text(
                  'Fusce tempor magna mi, non egestas velit ultricies nec. Aenean convallis, risus non condimentum gravida, odio mauris ullamcorper felis, ut venenatis purus ex eu mi. Quisque imperdiet lacinia urna, a placerat sapien pretium eu.',
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
      ),
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
              border: Border.all(width: 18, color: Theme.of(context).colorScheme.onPrimary),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 12,
                  spreadRadius: 4,
                )
              ]),
          child: ClipOval(
            child: CachedNetworkImage(
              imageUrl: 'https://hotfaz.ir/wp-content/uploads/2020/06/360284_857.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
