import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/core/res/color.dart';
import 'package:portfolio/app/extensions/divider_extension.dart';
import 'package:portfolio/app/models/portfolio_data.dart';
import 'package:portfolio/app/modules/home/controllers/home_controller.dart';
import 'package:portfolio/app/widgets/common_title.dart';
import 'package:portfolio/app/widgets/responsive_padding.dart';
import 'package:portfolio/app/widgets/responsive_widget.dart';

class BlogsWidget extends StatelessWidget {
  HomeController controller = Get.find();
  BlogsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      alignment: Alignment.center,
      child: ResponsivePadding(
        top: 25,bottom: 30,
        child: Column(
          children: [
            CommonTitle(title: 'Blogs',fontSize: 30,),
            20.height,
            Container(
              height: 340,
              child: ListView.separated(
                itemCount: (controller.portfolioData.value.blogs??[]).length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx,i)=>blogItem(controller.portfolioData.value.blogs![i]),
                separatorBuilder: (ctx,i)=>15.width,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget blogItem(Blog blog) => Card(
    elevation: 10,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
    ),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: deepBlueColor,
      ),
      padding: EdgeInsets.all(10),
      constraints: BoxConstraints(minWidth: 340, minHeight: 340),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(blog.image??'',height: 300,width: 300,),
        ],
      ),
    ),
  );
}
