import 'package:flutter/material.dart';
import 'package:portfolio/responsive/responsive.dart';

typedef ResponsiveLayoutBuilder = Widget Function(
    BuildContext context, ResponsivePlatform platform);

class ResponsiveBuilder extends StatelessWidget {
  final ResponsiveLayoutBuilder builder;

  const ResponsiveBuilder({
    Key? key,
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return builder(context, context.responsivePlatform());
  }
}
