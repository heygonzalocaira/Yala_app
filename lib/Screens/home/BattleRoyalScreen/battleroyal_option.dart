import 'package:flutter/material.dart';
import 'package:yala_app/Screens/Components/button_bar.dart';
import 'package:yala_app/Screens/Components/yala_logo.dart';

import '../../../constants.dart';

class BattelRotalOptionScreen extends StatefulWidget {
  @override
  _BattelRotalOptionScreenState createState() =>
      _BattelRotalOptionScreenState();
}

class _BattelRotalOptionScreenState extends State<BattelRotalOptionScreen> {
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
        title: YalaLogo(),
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
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.all(kDefaultPadding),
            child: Image.asset("assets/images/question.png",
                fit: BoxFit.fitHeight),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextQuestion(text: "Tiempo", size: 18),
                TextQuestion(text: "Pregunta #1", size: 18),
                TextQuestion(
                  size: 20,
                  text: "¿Qué año llegó Cristóbal Colón a América?",
                ),
                BattleROption(
                  text1: "a)",
                  text2:
                      "La fecha en la Cristóbal Colón llegó a América es en 1492.",
                ),
                BattleROption(
                  text1: "b)",
                  text2:
                      "La fecha en la Cristóbal Colón llegó a América es en 1492.",
                ),
                BattleROption(
                  text1: "c)",
                  text2:
                      "La fecha en la Cristóbal Colón llegó a América es en 1492.",
                ),
                BattleROption(
                  text1: "d)",
                  text2:
                      "La fecha en la Cristóbal Colón llegó a América es en 1492.",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TextQuestion extends StatelessWidget {
  const TextQuestion({
    Key key,
    @required this.text,
    @required this.size,
  }) : super(key: key);
  final String text;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding * 0.5),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.6,
        child: Center(
          child: Text(text,
              style: TextStyle(
                fontSize: size,
              )),
        ),
      ),
    );
  }
}

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
