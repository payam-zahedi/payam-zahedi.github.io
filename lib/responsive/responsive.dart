import 'dart:io';

import 'package:flutter/material.dart';

export 'package:portfolio/presentation/widgets/responsive/index.dart';

const maxMobileWith = 426;
const maxTabletWith = 769;

extension ResponsiveExtension on BuildContext {
  // This isMobile, isTablet, isDesktop help us later
  bool isMobile() => MediaQuery.of(this).size.width < maxMobileWith;

  bool isTablet() =>
      MediaQuery.of(this).size.width < maxTabletWith &&
      MediaQuery.of(this).size.width >= maxMobileWith;

  bool isDesktop() => MediaQuery.of(this).size.width >= maxTabletWith;

  bool isHandset() => (Platform.isAndroid || Platform.isIOS) && isMobile();

  ResponsivePlatform responsivePlatform() {
    if (isMobile()) {
      return ResponsivePlatform.mobile;
    } else if (isTablet()) {
      return ResponsivePlatform.tablet;
    } else {
      return ResponsivePlatform.desktop;
    }
  }
}

enum ResponsivePlatform {
  desktop,
  tablet,
  mobile,
}

extension ResponsivePlatformExtension on ResponsivePlatform {
  bool get isMobile => this == ResponsivePlatform.mobile;

  bool get isTablet => this == ResponsivePlatform.tablet;

  bool get isDesktop => this == ResponsivePlatform.desktop;
}
