import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/core/res/color.dart';
import 'package:portfolio/app/extensions/divider_extension.dart';
import 'package:portfolio/app/models/portfolio_data.dart';
import 'package:portfolio/app/modules/home/controllers/home_controller.dart';
import 'package:portfolio/app/utils/UrlLauncherUtils.dart';
import 'package:portfolio/app/widgets/common_title.dart';
import 'package:portfolio/app/widgets/responsive_padding.dart';
import 'package:portfolio/app/widgets/responsive_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class BlogsWidget extends StatelessWidget {
  HomeController controller = Get.find();

  BlogsWidget({super.key});

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
            CommonTitle(
              title: 'Blogs',
              fontSize: 30,
            ),
            20.height,
            SizedBox(
              height: 380,
              child: ListView.separated(
                itemCount: (controller.portfolioData.value.blogs ?? []).length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, i) =>
                    blogItem(controller.portfolioData.value.blogs![i]),
                separatorBuilder: (ctx, i) => 15.width,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget blogItem(Blog blog) => InkWell(
        onTap: () => UrlLauncherUtils.launchFullUrl(url: blog.link??''),
        child: Card(
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: deepBlueColor,
            ),
            constraints: const BoxConstraints(minWidth: 400),
            width: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  blog.image ?? '',
                  height: 300,
                  width: 500,
                  fit: BoxFit.cover,
                ),
                10.height,
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    blog.title ?? '',
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.start,
                  ),
                )
              ],
            ),
          ),
        ),
      );
}
