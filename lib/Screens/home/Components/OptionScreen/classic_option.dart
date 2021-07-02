import 'package:flutter/material.dart';
import 'package:yala_app/Screens/Components/button_bar.dart';
import 'package:yala_app/Screens/Components/yala_logo.dart';
import 'package:yala_app/constants.dart';

import '../option_information.dart';
import '../text_white.dart';
import '../white_divider.dart';

class ClassicOptionScreen extends StatefulWidget {
  @override
  _ClassicOptionScreenState createState() => _ClassicOptionScreenState();
}

class _ClassicOptionScreenState extends State<ClassicOptionScreen> {
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
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(kDefaultPadding * 0.8),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(kDefaultPadding * 0.5),
                    child: Center(
                      child: TextWhite(
                        text: "Partida Clasica",
                        size: 24,
                        padding: kDefaultPadding * 0.1,
                      ),
                    ),
                  ),
                ),
              ),
              WhiteDivider(),
              TextWhite(
                text: "Pregunta A",
                size: 18,
                padding: kDefaultPadding * 0.5,
              ),
              Container(
                child: TextWhite(
                  text: "¿Qué año llegó Cristóbal\n Colón a América?",
                  size: 24,
                  padding: kDefaultPadding * 0.8,
                ),
              ),
              WhiteDivider(),
              Container(
                height: 400,
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: <Widget>[
                    OptionInformation(
                      letter: "a)",
                      text:
                          "La fecha en la Cristóbal Colón llegó a América es en 1495.",
                      imgNet:
                          "https://img2.rtve.es/i/?w=1600&i=1589899238129.jpg",
                    ),
                    OptionInformation(
                      letter: "b)",
                      text:
                          "La fecha en la Cristóbal Colón llegó a América es en 1495.",
                      imgNet:
                          "https://img2.rtve.es/i/?w=1600&i=1589899238129.jpg",
                    ),
                    OptionInformation(
                      letter: "c)",
                      text:
                          "La fecha en la Cristóbal Colón llegó a América es en 1495.",
                      imgNet:
                          "https://img2.rtve.es/i/?w=1600&i=1589899238129.jpg",
                    ),
                    OptionInformation(
                      letter: "d)",
                      text:
                          "La fecha en la Cristóbal Colón llegó a América es en 1495.",
                      imgNet:
                          "https://img2.rtve.es/i/?w=1600&i=1589899238129.jpg",
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
