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

class ExperienceWidget extends StatelessWidget {
  HomeController controller = Get.find();

  ExperienceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      alignment: Alignment.center,
      child: ResponsivePadding(
        top: 25,
        bottom: 30,
        child: Column(
          children: [
            Align(
                alignment: Alignment.centerLeft,
                child: CommonTitle(
                  title: 'Experience',
                  fontSize: 30,
                )),
            20.height,
            ListView.separated(
              shrinkWrap: true,
              itemCount:
                  (controller.portfolioData.value.experiences ?? []).length,
              itemBuilder: (ctx, i) =>
                  _item(controller.portfolioData.value.experiences![i]),
              separatorBuilder: (ctx, i) => 15.height,
            )
          ],
        ),
      ),
    );
    ;
  }

  Widget _item(Experience experience) => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${experience.from ?? ''} - ${experience.to ?? ''}',
            style: TextStyle(color: Colors.white),
          ),
          10.width,
          _separateWidget(),
          5.width,
          _positionDetailsWidget(experience)
        ],
      );

  Widget _separateWidget() => Column(
        children: [
          Icon(
            Icons.do_not_disturb_on_total_silence,
            color: Colors.amber,
          ),
          Container(
            width: 2,
            color: Colors.white,
          ),
        ],
      );

  _positionDetailsWidget(Experience experience) => Expanded(
        child: RichText(
          text: TextSpan(children: [
            TextSpan(
                text: '${experience.position}\n',
                style: TextStyle(fontSize: 30, color: Colors.white)),
            TextSpan(
                text: '${experience.location}\n\n',
                style: TextStyle(fontSize: 20, color: Colors.white)),
            TextSpan(
                text: '${experience.responsibility}\n\n',
                style: TextStyle(fontSize: 18, color: Colors.white54)),
            TextSpan(
                text: 'Technology: ${experience.technology}',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white54,
                    fontWeight: FontWeight.bold)),
          ]),
        ),
      );
}
