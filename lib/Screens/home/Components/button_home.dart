import 'package:flutter/material.dart';

import '../../../constants.dart';

class ButtonHome extends StatelessWidget {
  const ButtonHome({
    Key key,
    @required this.text,
    @required this.img,
  }) : super(key: key);
  final String text;
  final String img;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding * 0.7),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.5),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text, //listOptions[index].text,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 24.0,
                ),
              ),
            ),
            Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                ),
                child: Image.asset(img, fit: BoxFit.fitWidth)),
          ],
        ),
      ),
    );
  }
}
