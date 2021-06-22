import 'package:flutter/material.dart';

import '../../../constants.dart';

class TrophyImage extends StatelessWidget {
  const TrophyImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding * 0.2),
      child: CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage("assets/images/trophy.png"),
      ),
    );
  }
}
