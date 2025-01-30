import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/core/res/color.dart';
import 'package:portfolio/app/extensions/divider_extension.dart';
import 'package:portfolio/app/models/portfolio_data.dart';
import 'package:portfolio/app/modules/home/controllers/home_controller.dart';
import 'package:portfolio/app/widgets/common_title.dart';
import 'package:portfolio/app/widgets/responsive_padding.dart';
import 'package:portfolio/app/widgets/responsive_widget.dart';

class ProjectsWidget extends StatelessWidget {
  HomeController controller = Get.find();
  ProjectsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      alignment: Alignment.center,
      child: ResponsivePadding(
        top: 25,bottom: 30,
        child: Column(
          children: [
            CommonTitle(title: 'Projects',fontSize: 30,),
            10.height,
            10.height,
            ResponsiveWidget(
              desktop: _projectListDesktop(),
              tablet: _projectListTablet(),
              mobile: _projectListMobile(),
            )
          ],
        ),
      ),
    );
  }

  Widget projectItem(ImportantLink e) => Card(
    elevation: 10,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
    ),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: deepBlueColor,
      ),
      padding: const EdgeInsets.all(10),
      constraints: const BoxConstraints(minWidth: 200, minHeight: 200),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(e.image??'',height: 200,width: 200,),
        ],
      ),
    ),
  );

  Widget projectItemDesktop(ImportantLink e) => Card(
    elevation: 10,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
    ),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: deepBlueColor,
      ),
      padding: const EdgeInsets.all(10),
      constraints: const BoxConstraints(minWidth: 350, minHeight: 350),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(e.image??'',height: 350,width: 350,),
        ],
      ),
    ),
  );

    Widget _projectListDesktop() => Wrap(
      runSpacing: 20,
      spacing: 15,
      alignment: WrapAlignment.center,
      children: (controller.portfolioData.value.projects??[])
          .map((e) => projectItemDesktop(e))
          .toList());

  Widget _projectListTablet() => Wrap(
      runSpacing: 20,
      spacing: 15,
      alignment: WrapAlignment.center,
      children: (controller.portfolioData.value.projects??[])
          .map((e) => projectItem(e))
          .toList());

  Widget _projectListMobile() => SizedBox(
    height: 240,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
        itemBuilder: (ctx,i)=> projectItem(controller.portfolioData.value.projects![i]),
        separatorBuilder: (ctx,i)=> 10.width,
        itemCount: (controller.portfolioData.value.projects??[]).length
    ),
  );
}
