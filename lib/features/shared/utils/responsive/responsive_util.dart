import 'package:flutter/material.dart';

class ResponsiveUtil {
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 650;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 650;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;
}

enum ScreenSize {
  mobile(300),
  tablet(448),
  desktop(768);

  final double size;

  const ScreenSize(this.size);
}

ScreenSize getScreenSize(BuildContext context) {
  double deviceWidth = MediaQuery.sizeOf(context).shortestSide;

  if (deviceWidth > ScreenSize.desktop.size) return ScreenSize.desktop;
  if (deviceWidth > ScreenSize.tablet.size) return ScreenSize.tablet;
  return ScreenSize.mobile;
}
