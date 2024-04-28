import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app/common/custom_text_button.dart';

class HomeSilverAppbar extends StatelessWidget {
  String label;
  HomeSilverAppbar({required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text(label),
      actions: [
        CustomTextButton(
            name: 'Home',
            onTap: (){}
        ),

        CustomTextButton(
            name: 'About',
            onTap: (){}
        ),

        CustomTextButton(
            name: 'Projects',
            onTap: (){}
        ),

        CustomTextButton(
            name: 'Blogs',
            onTap: (){}
        ),

        CustomTextButton(
            name: 'Achievements',
            onTap: (){}
        ),

        CustomTextButton(
            name: 'Contact',
            onTap: (){}
        )
      ],
    );
  }
}
