import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yala_app/Screens/home/BattleRoyalScreen/battleroyal_option.dart';
import 'package:yala_app/Screens/home/OptionScreen/classic_option.dart';
import 'package:yala_app/models/LearningType.dart';

import 'button_home.dart';

class OptionsHome extends StatelessWidget {
  const OptionsHome({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    print("ah prro");
                  },
                  child: ButtonHome(
                    text: listOptions[0].text,
                    img: listOptions[0].img,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => ClassicOptionScreen());
                  },
                  child: ButtonHome(
                    text: listOptions[1].text,
                    img: listOptions[1].img,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => BattelRotalOptionScreen());
                  },
                  child: ButtonHome(
                    text: listOptions[2].text,
                    img: listOptions[2].img,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("ah prro3");
                  },
                  child: ButtonHome(
                    text: listOptions[3].text,
                    img: listOptions[3].img,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
