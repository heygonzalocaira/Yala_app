import 'package:flutter/material.dart';

import '../../../../constants.dart';

class BattleROption extends StatelessWidget {
  const BattleROption({
    Key key,
    @required this.text1,
    @required this.text2,
  }) : super(key: key);
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding * 2,
          right: kDefaultPadding * 2,
          top: kDefaultPadding * 0.5),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.black45,
      ),
      child: Padding(
        padding: EdgeInsets.all(kDefaultPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text1),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Text(text2),
            ),
          ],
        ),
      ),
    );
  }
}
