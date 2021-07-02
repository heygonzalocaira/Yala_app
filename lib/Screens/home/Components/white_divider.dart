import 'package:flutter/material.dart';

import '../../../constants.dart';

class WhiteDivider extends StatelessWidget {
  const WhiteDivider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: kDefaultPadding,
        right: kDefaultPadding,
      ),
      child: Divider(
        color: Colors.white,
        height: 1,
        thickness: 1,
      ),
    );
  }
}
