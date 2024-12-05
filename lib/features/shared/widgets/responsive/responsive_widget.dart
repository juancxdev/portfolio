import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const ResponsiveWidget({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      // If our width is more than 768 then we consider it a desktop
      builder: (context, constraints) {
        if (constraints.maxWidth >= 768) {
          return desktop;
        }
        // If width it less then 512 and more then 650 we consider it as tablet
        else if (constraints.maxWidth >= 512) {
          return tablet;
        }
        // Or less then that we called it mobile
        else {
          return mobile;
        }
      },
    );
  }
}
