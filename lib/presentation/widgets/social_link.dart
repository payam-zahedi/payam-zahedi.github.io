import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class SocialLink extends StatelessWidget {
  const SocialLink({
    Key? key,
    required this.url,
    required this.imagePath,
    this.size = const Size.square(36),
    this.title,
    this.titleStyle,
  }) : super(key: key);

  final String url;

  final String imagePath;
  final Size size;

  final String? title;
  final TextStyle? titleStyle;

  @override
  Widget build(BuildContext context) {
    return Link(
      uri: Uri.parse(url),
      target: LinkTarget.blank,
      builder: (BuildContext context, Future<void> Function()? followLink) {
        return InkWell(
          borderRadius: BorderRadius.circular(4),
          onTap: followLink,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  imagePath,
                  width: size.width,
                  height: size.height,
                ),
                if (title?.isNotEmpty ?? false)
                  Text(
                    title!,
                    style: titleStyle,
                    textAlign: TextAlign.center,
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
