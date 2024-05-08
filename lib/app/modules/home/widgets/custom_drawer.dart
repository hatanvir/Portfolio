import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/common/custom_text_button.dart';
import 'package:portfolio/app/modules/home/controllers/home_controller.dart';

class CustomDrawer extends StatelessWidget {
  HomeController controller = Get.find();
  CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          CustomTextButton(name: 'Home', onTap: () => jumpTo(index: 0,context: context)),
          CustomTextButton(name: 'About', onTap: () => jumpTo(index: 1,context: context)),
          CustomTextButton(name: 'Skills', onTap: () => jumpTo(index: 2,context: context)),
          CustomTextButton(name: 'Projects', onTap: () => jumpTo(index: 3,context: context)),
          CustomTextButton(name: 'Blogs', onTap: () => jumpTo(index: 5,context: context)),
          CustomTextButton(name: 'Contact', onTap: () => jumpTo(index: 6,context: context)),
        ],
      ),
    );
  }

  void jumpTo({required int index, required BuildContext context}) {
    Scaffold.of(context).closeDrawer();
    controller.observerController?.animateTo(
        index: index, duration: const Duration(seconds: 1), curve: Curves.ease);
  }
}