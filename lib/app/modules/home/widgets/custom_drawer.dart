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
          CustomTextButton(name: 'Home', onTap: () => jumpTo(index: 0)),
          CustomTextButton(name: 'About', onTap: () => jumpTo(index: 1)),
          CustomTextButton(name: 'Skills', onTap: () => jumpTo(index: 2)),
          CustomTextButton(name: 'Projects', onTap: () => jumpTo(index: 3)),
          CustomTextButton(name: 'Blogs', onTap: () => jumpTo(index: 5)),
          CustomTextButton(name: 'Contact', onTap: () => jumpTo(index: 6)),
        ],
      ),
    );
  }

  void jumpTo({required int index}) {
    controller.observerController?.animateTo(
        index: index, duration: const Duration(seconds: 1), curve: Curves.ease);
  }
}