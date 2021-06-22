import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'text_container.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({
    Key key,
    @required this.text1,
    @required this.text2,
    @required this.text3,
  }) : super(key: key);
  final String text1;
  final String text2;
  final String text3;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: kDefaultPadding * 0.8,
        left: kDefaultPadding * 0.8,
        right: kDefaultPadding * 0.8,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        width: double.infinity,
        //height: 200,
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding * 0.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextContainer(
                text: text1,
                sizePadding: 5,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextContainer(
                        text: text2,
                        sizePadding: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextContainer(
                            text: text3,
                            sizePadding: 10,
                          ),
                          Container(
                            height: 35,
                            child: Image.asset(
                              "assets/images/coin.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
