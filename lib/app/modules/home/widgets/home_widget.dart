import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app/common/custom_text_button.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Container(
              color: Colors.black87,
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(
                      "assets/Tanvir_image.JPG",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      'Self-motivated and hardworking Android and Flutter developer. Dedicated to learning new technology and love to solve problem in online judge.'
                  ),

                  SizedBox(
                    height: 20,
                  ),

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

                  SizedBox(
                    height: 20,
                  ),

                ],
              )),
        ],
      ),
    );
  }
}
