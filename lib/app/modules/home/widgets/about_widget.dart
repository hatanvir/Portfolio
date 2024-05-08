import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
      color: Colors.black87,
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
    children: [
      Align(
          alignment: Alignment.centerLeft,
          child: CommonTitle(title: 'About',fontSize: 40,)),
      10.height,
      Row(
        children: [
          Container(
            height: 5,
            color: Colors.amber,
            width: 100,
          ),

          15.width,

          Expanded(
            child: RichText(
              text: TextSpan(
                  children: [
                    TextSpan(text: controller.portfolioData.value.personalInfo?.about??'',style: TextStyle(fontSize: 18,color: Colors.white)),
                  ]
              ),
            ),
          ),
        ],
      )
    ],
  );

  Widget _smallScreenWidget() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      CommonTitle(title: 'About',fontSize: 40,),
      10.height,
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80,
            color: Colors.amber,
            width: 5,
          ),

          15.width,

          Expanded(
            child: RichText(
              text: TextSpan(
                  children: [
                    TextSpan(text: 'Self-motivated and hardworking Android and Flutter developer. Dedicated to learning new technology and love to solve problem in online judge.',style: TextStyle(fontSize: 18,color: Colors.white)),
                  ]
              ),
            ),
          ),
        ],
      )
    ],
  );
}
