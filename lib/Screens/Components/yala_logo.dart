import 'package:flutter/material.dart';

class YalaLogo extends StatelessWidget {
  const YalaLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      alignment: Alignment.center,
      child: Image.asset(
        "assets/images/yala_name.png",
        fit: BoxFit.fill,
      ),
    );
  }
}
