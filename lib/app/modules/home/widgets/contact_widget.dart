import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/enums/contact_enum.dart';
import 'package:portfolio/app/extensions/divider_extension.dart';
import 'package:portfolio/app/modules/home/controllers/home_controller.dart';
import 'package:portfolio/app/widgets/common_title.dart';
import 'package:portfolio/app/widgets/responsive_widget.dart';

class ContactWidget extends StatelessWidget {
  HomeController controller = Get.find();
  ContactWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      alignment: Alignment.center,
      child: Column(
        children: [
          _contactDividerWidget(
            child: CommonTitle(
              title: 'Contact',
              fontSize: 30,
            ),
          ),
          20.height,
          ResponsiveWidget(
              desktop: _contactInfoWidgetLarge(),
              mobile: _contactInfoWidgetSmall(),
              tablet: _contactInfoWidgetLarge()),
          20.height,
          _contactDividerWidget(
            child: Row(
              children: [
                Icon(Icons.email),
                5.width,
                Icon(Icons.email),
                5.width,
                Icon(Icons.email),
                5.width,
                Icon(Icons.email),
              ],
            ),
          ),
          80.height,
          CommonTitle(
            title: 'Thank You',
            fontSize: 30,
          ),
          100.height,
        ],
      ),
    );
  }

  Widget _contactInfoWidgetLarge() => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _contactItem(
                  icon: Icons.email_outlined,
                  text: controller.portfolioData.value.contact?.email??'',
                  color: Colors.amber,
                  type: ContactType.email),
              10.width,
              _contactItem(
                  icon: Icons.phone,
                  text: controller.portfolioData.value.contact?.phone??'',
                  color: Colors.amber,
                  type: ContactType.email),
            ],
          ),
          10.height,
          _contactItem(
              icon: Icons.location_on_rounded,
              text: controller.portfolioData.value.contact?.location??'',
              color: Colors.amber,
              type: ContactType.email)
        ],
      );

  Widget _contactInfoWidgetSmall() => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _contactItem(
              icon: Icons.email_outlined,
              text: controller.portfolioData.value.contact?.email??'',
              color: Colors.amber,
              type: ContactType.email),
          10.width,
          _contactItem(
              icon: Icons.phone,
              text: controller.portfolioData.value.contact?.phone??'',
              color: Colors.amber,
              type: ContactType.email),
          10.height,
          _contactItem(
              icon: Icons.location_on_rounded,
              text: controller.portfolioData.value.contact?.location??'',
              color: Colors.amber,
              type: ContactType.email)
        ],
      );

  Widget _contactItem(
          {required IconData icon,
          required String text,
          required MaterialColor color,
          required ContactType type}) =>
      InkWell(
        onTap: () {},
        child: Card(
          color: Colors.black87,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Container(
            padding: const EdgeInsets.all(15),
            width: 300,
            child: Row(
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                ),
                10.width,
                Text(
                  text,
                  style: TextStyle(
                      color: color, fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      );

  _contactDividerWidget({required Widget child}) => Row(
        children: [
          Expanded(
            child: Container(
              height: 2,
              color: Colors.amber,
            ),
          ),
          15.width,
          child,
          15.width,
          Expanded(
            child: Container(
              height: 2,
              color: Colors.amber,
            ),
          ),
        ],
      );
}
