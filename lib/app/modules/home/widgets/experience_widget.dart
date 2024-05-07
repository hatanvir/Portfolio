import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app/extensions/divider_extension.dart';
import 'package:portfolio/app/widgets/common_title.dart';

class ExperienceWidget extends StatelessWidget {
  const ExperienceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: 200,right: 200,top: 25,bottom: 30),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
              child: CommonTitle(title: 'Experience',fontSize: 40,)),
          20.height,
          ListView.separated(
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (ctx,i)=>_item(),
            separatorBuilder: (ctx,i)=>15.height,
          )
        ],
      ),
    );;
  }

  Widget _item() => Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('2021',style: TextStyle(
        color: Colors.white
      ),),
      10.width,
      _separateWidget(),
      5.width,
      _positionDetailsWidget()
    ],
  );

  Widget _separateWidget() => Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(Icons.do_not_disturb_on_total_silence,color: Colors.amber,),
      Container(
        width: 2,
        color: Colors.white,
        constraints: BoxConstraints(
          minHeight: 100
        ),
      ),
    ],
  );

  _positionDetailsWidget() => Expanded(
    child: RichText(
      text: TextSpan(
          children: [
            TextSpan(text: 'Senior Android Developer\n',style: TextStyle(fontSize: 30,color: Colors.white)),
            TextSpan(text: 'Dhaka, Bangladesh\n\n',style: TextStyle(fontSize: 20,color: Colors.white)),
            TextSpan(text: 'df fgijdfoi gdfijgidfgj odjsfg dfg 0gjodfgj d0fgdf dfjsdjf saidfhsiudfhsd fsidfuhsduifhs dfisudfhsi duf iushdf iusdfs iuhsdf sidouf oiushfi suadf ihusadfi iisaodfhu  asdfuhihi asdfi si hiusdf iasuhfiusdf hdugd f podijf podsfjgdfogj dfgipo dfg',style: TextStyle(fontSize: 18,color: Colors.white54)),
          ]
      ),
    ),
  );
}
