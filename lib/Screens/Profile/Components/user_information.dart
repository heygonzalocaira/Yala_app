import 'package:flutter/material.dart';
import 'package:yala_app/Screens/Task/Components/text_container.dart';
import 'package:yala_app/models/ProfileInfo.dart';

import '../../../constants.dart';

class UserInformation extends StatelessWidget {
  const UserInformation({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            bottomRight: Radius.circular(35),
          ),
        ),
        child: Center(
          child: Column(
            children: [
              TextContainer(
                text: userInfo.name,
                sizePadding: kDefaultPadding * 0.2,
              ),
              TextContainer(
                text: userInfo.mail,
                sizePadding: 0,
              ),
              Padding(
                padding: const EdgeInsets.all(kDefaultPadding * 0.6),
                child: Text(
                  userInfo.description,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
