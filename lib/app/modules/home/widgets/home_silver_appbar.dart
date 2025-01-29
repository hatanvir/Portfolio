import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/common/custom_text_button.dart';
import 'package:portfolio/app/core/res/color.dart';
import 'package:portfolio/app/modules/home/controllers/home_controller.dart';
import 'package:portfolio/app/widgets/responsive_widget.dart';

class HomeSilverAppbar extends StatelessWidget {
  HomeController controller = Get.find();
  String label;

  HomeSilverAppbar({required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: kToolbarHeight,
      pinned: true,
      floating: false,
      snap: false,
      forceElevated: true,
      title: Text(label),
      iconTheme: const IconThemeData(color: Colors.amber),
      backgroundColor: primaryColor,
      actions: [
        if (!ResponsiveWidget.isMobile(context)) ...[
          CustomTextButton(name: 'Home', onTap: () => jumpTo(index: 0)),
          CustomTextButton(name: 'About', onTap: () => jumpTo(index: 1)),
          CustomTextButton(name: 'Skills', onTap: () => jumpTo(index: 2)),
          CustomTextButton(name: 'Projects', onTap: () => jumpTo(index: 3)),
          CustomTextButton(name: 'Blogs', onTap: () => jumpTo(index: 5)),
          CustomTextButton(name: 'Contact', onTap: () => jumpTo(index: 6)),
        ]
      ],
    );
  }

  void jumpTo({required int index}) {
    controller.observerController?.animateTo(
        index: index, duration: const Duration(seconds: 1), curve: Curves.ease);
  }
}
