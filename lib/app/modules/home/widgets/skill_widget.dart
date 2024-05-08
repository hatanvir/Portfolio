import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/extensions/divider_extension.dart';
import 'package:portfolio/app/models/portfolio_data.dart';
import 'package:portfolio/app/modules/home/controllers/home_controller.dart';
import 'package:portfolio/app/widgets/common_title.dart';
import 'package:portfolio/app/widgets/responsive_padding.dart';
import 'package:portfolio/app/widgets/responsive_widget.dart';

class SkillWidget extends StatelessWidget {
  HomeController controller = Get.find();
  SkillWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      alignment: Alignment.center,
      child: ResponsivePadding(top: 25, bottom: 30,
        child: Column(
          children: [
            CommonTitle(
              title: 'Skills',
              fontSize: 30,
            ),
            10.height,
            Wrap(
                runSpacing: 20,
                spacing: 15,
                alignment: WrapAlignment.center,
                children: (controller.portfolioData.value.skillSet??[])
                    .map((e) => skillItem(e))
                    .toList())
          ],
        ),
      ),
    );
  }

  Widget skillItem(ImportantLink skill) => ResponsiveWidget(
      desktop: _itemLarge(skill),
      mobile: _itemSmall(skill),
      tablet: _itemLarge(skill)
  );

  _itemLarge(ImportantLink skill) => Card(
    elevation: 10,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
    ),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black45,
      ),
      padding: EdgeInsets.all(10),
      constraints: BoxConstraints(minWidth: 120, minHeight: 120),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(skill.image??'',height: 80,width: 80,),
          15.height,
          Text(
            skill.name??'',
            style: TextStyle(fontSize: 18, color: Colors.white),
          )
        ],
      ),
    ),
  );

  _itemSmall(ImportantLink skill) => Card(
    elevation: 10,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
    ),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black45,
      ),
      padding: EdgeInsets.all(10),
      constraints: const BoxConstraints(minWidth: 80, minHeight: 80),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(skill.image??'',height: 80,width: 80,),
          15.height,
          Text(
            skill.name??'',
            style: TextStyle(fontSize: 18, color: Colors.white),
          )
        ],
      ),
    ),
  );
}
