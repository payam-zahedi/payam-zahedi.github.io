import 'package:flutter/material.dart';
import 'package:portfolio/responsive/responsive.dart';

class ImageAvatar extends StatelessWidget {
  const ImageAvatar({
    Key? key,
    required this.imageUrl,
    this.borderWidth,
    this.borderColor,
    this.boxFit,
  }) : super(key: key);

  final String imageUrl;
  final double? borderWidth;
  final Color? borderColor;
  final BoxFit? boxFit;

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
                width: borderWidth ?? _defaultBorderWidth(context),
                color: borderColor ?? Theme.of(context).colorScheme.onPrimary,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 12,
                  spreadRadius: 4,
                ),
              ]),
          child: ClipOval(
            child: Image.network(
              imageUrl,
              fit: boxFit ?? BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  double _defaultBorderWidth(BuildContext context) => (context.isMobile()
      ? 10
      : context.isTablet()
          ? 12
          : 18);
}
