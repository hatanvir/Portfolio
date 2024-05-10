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

class ExperienceWidget extends StatelessWidget {
  HomeController controller = Get.find();

  ExperienceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
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
              separatorBuilder: (ctx, i) => 20.height,
            )
          ],
        ),
      ),
    );
  }

  _item(Experience experience) => Container(
    decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(10)),
    padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _companyWidget(experience),

          ],
        ),
      );

  Widget _companyWidget(Experience experience) => Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
     Expanded(
       flex: 1,
       child:  Image.asset('assets/images/android.png',height: 80,width: 80,),
     ),
      Expanded(
        flex: 9,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('mPower Social Enterprice',style: TextStyle(color: Colors.white),),
            _positionWidget(experience),
            _positionDetailsWidget(experience)
          ],
        ),
      )
    ],
  );
  
  Widget _positionWidget(Experience experience) => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(
        flex: 8,
        child: Text( '${experience.position}',
          style: const TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
      Expanded(
        flex: 2,
        child: Text(
            '${experience.from} - ${experience.to}\n',
            textAlign: TextAlign.end,
            style: const TextStyle(fontSize: 15, color: Colors.white)),
      )
    ],
  );

  Widget _positionDetailsWidget(Experience experience) => RichText(
    text: TextSpan(children: [
      TextSpan(
          text: '${experience.location}\n\n',
          style: const TextStyle(fontSize: 20, color: Colors.white)),
      TextSpan(
          text: '${experience.responsibility}\n\n',
          style: const TextStyle(fontSize: 18, color: Colors.white54)),
      TextSpan(
          text: 'Technology: ${experience.technology}',
          style: const TextStyle(
              fontSize: 18,
              color: Colors.white54,
              fontWeight: FontWeight.bold)),
    ]),
  );
}
