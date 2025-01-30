import 'package:flutter/cupertino.dart';

class ResponsivePadding extends StatelessWidget {
  final Widget child;
  double top;
  double bottom;

  ResponsivePadding({
    Key? key,
    required this.top,
    required this.bottom,
    required this.child,
  }) : super(key: key);

    /// mobile < 650
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 650;

  /// tablet >= 650
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 650;

  ///desktop >= 1100
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).size.width > 650
          ? EdgeInsets.only(
              left: (MediaQuery.of(context).size.width / 9),
              right: (MediaQuery.of(context).size.width / 9),
              bottom: bottom,
              top: top)
          : EdgeInsets.only(left: 15,right: 15,top: top,bottom: bottom),
      child: child,
    );
  }
}
