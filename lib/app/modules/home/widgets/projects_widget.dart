import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app/extensions/divider_extension.dart';
import 'package:portfolio/app/widgets/common_title.dart';

class ProjectsWidget extends StatelessWidget {
  const ProjectsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: 200,right: 200,top: 25,bottom: 30),
      child: Column(
        children: [
          CommonTitle(title: 'Projects',fontSize: 40,),
          10.height,
          10.height,
          Wrap(
              runSpacing: 20,
              spacing: 15,
              alignment: WrapAlignment.center,
              children: [1, 2, 3, 4, 5, 6, 7]
                  .map((e) => projectItem())
                  .toList())
        ],
      ),
    );
  }

  Widget projectItem() => Card(
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
      constraints: BoxConstraints(minWidth: 340, minHeight: 340),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.adb,
            size: 200,
          ),
        ],
      ),
    ),
  );
}
