import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app/common/custom_text_button.dart';
import 'package:portfolio/app/extensions/divider_extension.dart';
import 'package:portfolio/app/modules/home/widgets/skill_widget.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black87,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            20.height,
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(
                "assets/Tanvir_image.JPG",
              ),
            ),
            20.height,
            const Text(
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ),
                'Self-motivated and hardworking Android and Flutter developer. Dedicated to learning new technology and love to solve problem in online judge.'
            ),

            20.height,

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextButton(
                    name: 'Download CV',
                    onTap: (){}
                ),
                CustomTextButton(
                    name: 'Hire',
                    onTap: (){}
                )
              ],
            ),

            20.height,

          ],
        ));
  }
}
