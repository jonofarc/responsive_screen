import 'package:flutter/material.dart';

enum ResponsiveSize {
  mobile,
  tablet,
  desktop,
}

class Responsive extends StatelessWidget {
  static double mobileWidth = 475.0;
  static double tabletWidth = 768.0;
  static double desktopWidth = 1386.0;

  final Widget small;
  final Widget medium;
  final Widget large;

  const Responsive({
    required Key key,
    required this.small,
    required this.medium,
    required this.large,
  }) : super(key: key);

  static bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < tabletWidth;

  static bool isTablet(BuildContext context) => MediaQuery.of(context).size.width >= tabletWidth && MediaQuery.of(context).size.width < desktopWidth;

  static bool isDesktop(BuildContext context) => MediaQuery.of(context).size.width >= desktopWidth;

  static ResponsiveSize responsiveSize(BuildContext context) {
    if (isMobile(context)) {
      return ResponsiveSize.mobile;
    } else if (isTablet(context)) {
      return ResponsiveSize.tablet;
    } else {
      return ResponsiveSize.desktop;
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= desktopWidth) {
          return large;
        } else if (constraints.maxWidth >= tabletWidth) {
          return medium;
        } else {
          return small;
        }
      },
    );
  }
}
