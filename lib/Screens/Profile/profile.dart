import 'package:flutter/material.dart';
import 'package:yala_app/Screens/Components/button_bar.dart';
import 'package:yala_app/Screens/Components/yala_logo.dart';
import 'package:yala_app/Screens/Task/Components/text_container.dart';
import 'package:yala_app/Screens/Components/title_appbar.dart';
import 'package:yala_app/constants.dart';
import 'package:yala_app/models/ProfileInfo.dart';

import 'Components/image_circle_shape.dart';
import 'Components/trophy_image.dart';
import 'Components/user_information.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedDestination = 0;

  void selectDestination(int index) {
    setState(() {
      _selectedDestination = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ButtonNavVar(),
      appBar: AppBar(
        centerTitle: true,
        title: TitleAppBar(
          text: "Perfil",
          size: 25,
        ),
        backgroundColor: kPrimaryColor,
      ),
      drawer: SafeArea(
        child: Theme(
          data: Theme.of(context).copyWith(canvasColor: kPrimaryColor),
          child: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: YalaLogo(),
                ),
                Divider(
                  height: 2,
                  thickness: 1,
                ),
                GestureDetector(
                  child: Container(
                    color: kBackgroundColor,
                    child: ListTile(
                      leading: Icon(Icons.calendar_today_sharp),
                      title: Text("Calendario"),
                      selected: _selectedDestination == 0,
                    ),
                  ),
                  onTap: () => selectDestination(0),
                ),
                ListTile(
                  leading: Icon(Icons.event_note),
                  title: Text("Notas"),
                  selected: _selectedDestination == 1,
                  onTap: () => selectDestination(1),
                ),
                Container(
                  color: kBackgroundColor,
                  child: ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("Configuración"),
                    selected: _selectedDestination == 2,
                    onTap: () => selectDestination(2),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.info_rounded),
                  title: Text("Acerca de nosotros"),
                  selected: _selectedDestination == 3,
                  onTap: () => selectDestination(3),
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 230,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 180,
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: NetworkImage(userInfo.imgBackground),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ImageCircleShape(
                    img: userInfo.img,
                    size: 180,
                  ),
                )
              ],
            ),
          ),
          UserInformation(),
          Padding(
            padding: const EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding,
                bottom: kDefaultPadding),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                color: Colors.white.withOpacity(0.5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextContainer(
                    text: "Logros",
                    sizePadding: kDefaultPadding * 0.8,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(kDefaultPadding * 0.5),
                    child: Row(
                      children: [
                        TrophyImage(),
                        TrophyImage(),
                        TrophyImage(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding,
                bottom: kDefaultPadding),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                color: Colors.white.withOpacity(0.5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextContainer(
                    text: "Ranking",
                    sizePadding: kDefaultPadding * 0.8,
                  ),
                  TextContainer(
                    text: "10014",
                    sizePadding: kDefaultPadding * 0.8,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
