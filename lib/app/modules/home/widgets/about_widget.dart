import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/core/res/color.dart';
import 'package:portfolio/app/extensions/divider_extension.dart';
import 'package:portfolio/app/modules/home/controllers/home_controller.dart';
import 'package:portfolio/app/widgets/common_title.dart';
import 'package:portfolio/app/widgets/responsive_padding.dart';
import 'package:portfolio/app/widgets/responsive_widget.dart';

class AboutWidget extends StatelessWidget {
  HomeController controller = Get.find();
  AboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      alignment: Alignment.center,
      child: ResponsivePadding(
        top: 50,
        bottom: 50,
        child: ResponsiveWidget(
          desktop: _largeScreenWidget(),
          tablet: _largeScreenWidget(),
            mobile: _smallScreenWidget(),
        ),
      ),
    );
  }

  Widget _largeScreenWidget() => Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      IntrinsicWidth(
        child: Column(
          children: [
            Align(
                alignment: Alignment.centerLeft,
                child: CommonTitle(title: 'About',fontSize: 40,)),
        
                Container(
              height: 5,
              color: Colors.amber,
            ),
          ],
        ),
      ),

      15.height,
      
      RichText(
        text: TextSpan(
            children: [
              TextSpan(text: controller.portfolioData.value.personalInfo?.about??'',style: const TextStyle(fontSize: 18,color: Colors.white)),
            ]
        ),
      )
    ],
  );

  Widget _smallScreenWidget() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      CommonTitle(title: 'About',fontSize: 40,),
      10.height,
      IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.amber,
              width: 5,
            ),
        
            15.width,
        
            Expanded(
              child: RichText(
                text: TextSpan(
                    children: [
                      TextSpan(text: controller.portfolioData.value.personalInfo?.about??'',style: const TextStyle(fontSize: 18,color: Colors.white)),
                    ]
                ),
              ),
            ),
          ],
        ),
      )
    ],
  );
}
