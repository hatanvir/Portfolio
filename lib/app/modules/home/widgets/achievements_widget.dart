import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app/extensions/divider_extension.dart';
import 'package:portfolio/app/modules/common_title.dart';

class AchievementWidget extends StatelessWidget {
  const AchievementWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: 15,right: 15,top: 25,bottom: 30),
      child: Column(
        children: [
          CommonTitle(title: 'Achievements',fontSize: 30,),
          10.height,
          /* Wrap(
              runSpacing: 20,
              spacing: 15,
              children: [1,2,3,4,5,6,7,1,1,1,1,1,1].map((e) => _linerProgressWidget()).toList()
          )*/
        ],
      ),
    );
  }
}
