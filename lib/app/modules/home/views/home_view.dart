import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:portfolio/app/extensions/divider_extension.dart';
import 'package:portfolio/app/modules/home/widgets/about_widget.dart';
import 'package:portfolio/app/modules/home/widgets/achievements_widget.dart';
import 'package:portfolio/app/modules/home/widgets/blogs_widget.dart';
import 'package:portfolio/app/modules/home/widgets/contact_widget.dart';
import 'package:portfolio/app/modules/home/widgets/experience_widget.dart';
import 'package:portfolio/app/modules/home/widgets/home_silver_appbar.dart';
import 'package:portfolio/app/modules/home/widgets/home_widget.dart';
import 'package:portfolio/app/modules/home/widgets/projects_widget.dart';
import 'package:portfolio/app/modules/home/widgets/skill_widget.dart';
import 'package:portfolio/app/widgets/responsive_widget.dart';
import 'package:scrollview_observer/scrollview_observer.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            ResponsiveWidget(
              desktop: HomeSilverAppbar(
                label: 'Home',
              ),
              tablet: HomeSilverAppbar(
                label: 'Home',
              ),
              mobile: HomeSilverAppbar(
                label: 'Home',
              ),
            ),
          ];
        },
        body: _allHomeWidgets(),
      ),
    );
  }

  Widget _allHomeWidgets() => ListViewObserver(
        controller: controller.observerController,
        child: ListView(
          controller: controller.scrollController,
          children: [
            HomeWidget(),
            AboutWidget(),
            _divider(),
            SkillWidget(),
            _divider(),
            ProjectsWidget(),
            _divider(),
            ExperienceWidget(),
            _divider(),
            BlogsWidget(),
            _divider(),
            AchievementWidget(),
            _divider(),
            ContactWidget(),
            _divider()
          ],
        ),
      );

  Widget _divider() => Divider(
        color: Colors.black,
        height: 1,
      );
}
