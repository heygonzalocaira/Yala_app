import 'package:flutter/material.dart';
import '../../../../constants.dart';
import 'text_white.dart';

class OptionInformation extends StatelessWidget {
  const OptionInformation({
    Key key,
    @required this.letter,
    @required this.text,
    @required this.imgNet,
  }) : super(key: key);

  final String letter;
  final String text;
  final String imgNet;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextWhite(text: letter, size: 18, padding: kDefaultPadding * 0.5),
              Container(
                width: MediaQuery.of(context).size.width * 0.28,
                child: TextWhite(
                    text: text, size: 15, padding: kDefaultPadding * 0.5),
              ),
            ],
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: NetworkImage(imgNet),
              ),
            ),
          ),
          //Image.network(
          //    "https://img2.rtve.es/i/?w=1600&i=1589899238129.jpg"),
        ],
      ),
    );
  }
}
