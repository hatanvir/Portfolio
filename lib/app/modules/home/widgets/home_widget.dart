import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/common/custom_text_button.dart';
import 'package:portfolio/app/core/res/color.dart';
import 'package:portfolio/app/extensions/divider_extension.dart';
import 'package:portfolio/app/modules/home/controllers/home_controller.dart';
import 'package:portfolio/app/modules/home/widgets/skill_widget.dart';
import 'package:portfolio/app/widgets/common_button.dart';
import 'package:portfolio/app/widgets/responsive_padding.dart';
import 'package:portfolio/app/widgets/responsive_widget.dart';

class HomeWidget extends StatelessWidget {
  HomeController controller = Get.find();
  HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: primaryColor,
        alignment: Alignment.center,
        child: ResponsivePadding(
          top: 50,
          bottom: 50,
          child: ResponsiveWidget(
            desktop: _largeScreenView(),
            tablet: _largeScreenView(),
            mobile: _smallScreenView(),
          ),
        ));
  }

  Widget _largeScreenView() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _introWidget(),
          Image.asset("assets/images/tanvir.png",height: 300.h,)
        ],
      );

  Widget _smallScreenView() => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/tanvir.png",height: 300.h,),
          20.height,
          ResponsiveWidget(
            desktop: _introWidget(),
            tablet: _introWidget(),
            mobile: _introWidgetSmall(),
          ),
        ],
      );

  Widget _introWidget() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: 'I\'M  ',
                  style: TextStyle(fontSize: 18, color: Colors.white)),
              TextSpan(
                  text: controller.portfolioData.value.personalInfo?.name??'',
                  style: TextStyle(fontSize: 35, color: Colors.amber)),
              TextSpan(
                  text: '\n\n${controller.portfolioData.value.personalInfo?.designation??''}',
                  style: TextStyle(fontSize: 18, color: Colors.white)),
            ]),
          ),
          10.height,
          CommonButton(title: 'Contact',
              onTap: () {

              })
        ],
      );

  Widget _introWidgetSmall() => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(children: [
              TextSpan(
                  text: 'I\'M  ',
                  style: TextStyle(fontSize: 18, color: Colors.white)),
              TextSpan(
                  text: controller.portfolioData.value.personalInfo?.name??'',
                  style: TextStyle(fontSize: 35, color: Colors.amber)),
              TextSpan(
                  text: '\n\n${controller.portfolioData.value.personalInfo?.designation??''}',
                  style: TextStyle(fontSize: 18, color: Colors.white)),
            ]),
          ),
          20.height,
          CommonButton(title: 'Contact',
              onTap: () {})
        ],
      );
}
