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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).size.width > 650
          ? EdgeInsets.only(
              left: (MediaQuery.of(context).size.width / 8),
              right: (MediaQuery.of(context).size.width / 8),
              bottom: bottom,
              top: top)
          : EdgeInsets.only(left: 50,right: 50,top: top,bottom: bottom),
      child: child,
    );
  }
}
