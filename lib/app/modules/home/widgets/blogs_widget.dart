import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app/extensions/divider_extension.dart';
import 'package:portfolio/app/widgets/common_title.dart';

class BlogsWidget extends StatelessWidget {
  const BlogsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: 200,right: 200,top: 25,bottom: 30),
      child: Column(
        children: [
          CommonTitle(title: 'Blogs',fontSize: 30,),
          20.height,
          Container(
            height: 300,
            child: ListView.separated(
              itemCount: 8,
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx,i)=>blogItem(),
              separatorBuilder: (ctx,i)=>15.width,
            ),
          )
        ],
      ),
    );
  }

  Widget blogItem() => Card(
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
