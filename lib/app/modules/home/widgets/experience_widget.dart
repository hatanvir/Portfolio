import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
      padding: const EdgeInsets.all(15),
      child: ResponsiveWidget(
        desktop: _companyWidget(experience),
        tablet: _companyWidget(experience),
        mobile: _companyWidgetSmall(experience),
      ));

  Widget _companyWidget(Experience experience) => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor: Colors.white,
            child: ClipOval(
                child: CachedNetworkImage(
                      imageUrl: experience.companyLogo ?? '',
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                      errorWidget: (ctx, _, __) => const Icon(CupertinoIcons.building_2_fill,
                          size: 50, color: primaryColor),
                    ),),
          ),
          15.width,
          Expanded(
            flex: 9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(
                   experience.company ?? '',
                  style: TextStyle(color: Colors.white),
                ),
                _positionWidget(experience),
                _positionDetailsWidget(experience)
              ],
            ),
          )
        ],
      );

  Widget _companyWidgetSmall(Experience experience) => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
            child: ClipOval(
                child: CachedNetworkImage(
                      imageUrl: experience.companyLogo ?? '',
                      height: 40,
                      width: 40,
                      fit: BoxFit.cover,
                      errorWidget: (ctx, _, __) => const Icon(CupertinoIcons.building_2_fill,
                          size: 40, color: primaryColor),
                    )),
          ),
          15.width,
          Expanded(
            flex: 9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  experience.company ?? '',
                  style: const TextStyle(color: Colors.white),
                ),
                _positionWidgetSmall(experience),
                _positionDetailsWidgetSmall(experience)
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
            child: AutoSizeText(
              '${experience.position}',
              style: const TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
          Expanded(
            flex: 2,
            child: AutoSizeText('${experience.from} - ${experience.to}\n',
                textAlign: TextAlign.end,
                style: const TextStyle(fontSize: 15, color: Colors.white)),
          )
        ],
      );

  Widget _positionWidgetSmall(Experience experience) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 8,
            child: AutoSizeText(
              '${experience.position}',
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
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

  Widget _positionDetailsWidgetSmall(Experience experience) => RichText(
        text: TextSpan(children: [
          TextSpan(
              text: '${experience.location}\n',
              style: const TextStyle(fontSize: 16, color: Colors.white)),
          TextSpan(
              text: '${experience.from} - ${experience.to}\n\n',
              style: const TextStyle(
                fontSize: 12,
                color: Colors.white,
              )),
          TextSpan(
              text: '${experience.responsibility}\n\n',
              style: const TextStyle(fontSize: 14, color: Colors.white54)),
          TextSpan(
              text: 'Technology: ${experience.technology}',
              style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white54,
                  fontWeight: FontWeight.bold)),
        ]),
      );
}
