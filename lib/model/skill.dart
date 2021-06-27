import 'package:flutter/painting.dart';

class SkillModel {
  const SkillModel({
    required this.name,
    this.imageUrl,
    this.color,
  });

  final String name;
  final String? imageUrl;
  final Color? color;

  bool get hasImage => imageUrl?.isNotEmpty ?? false;
}
