import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:portfolio/app/modules/home/widgets/home_silver_appbar.dart';
import 'package:portfolio/app/modules/home/widgets/home_widget.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          HomeSilverAppbar(
            label: 'Home',
          ),

          HomeWidget()

        ],
      ),
    );
  }
}
