import 'package:flutter/material.dart';
import 'package:yala_app/Screens/Components/button_bar.dart';
import 'package:yala_app/Screens/Components/yala_logo.dart';
import 'package:yala_app/constants.dart';

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
              //Container(
              //  height: 400,
              //  child: GridView.count(
              //    primary: false,
              //    padding: const EdgeInsets.all(20),
              //    crossAxisSpacing: 10,
              //    mainAxisSpacing: 10,
              //    crossAxisCount: 2,
              //    children: <Widget>[
              //      Container(
              //        height: 300,
              //        padding: const EdgeInsets.all(kDefaultPadding * 0.5),
              //        decoration: BoxDecoration(
              //            color: Colors.white.withOpacity(0.5),
              //            borderRadius: BorderRadius.all(Radius.circular(15))),
              //        child: Column(
              //          children: [
              //            Row(
              //              mainAxisAlignment: MainAxisAlignment.center,
              //              children: [
              //                TextWhite(
              //                    text: "a)",
              //                    size: 18,
              //                    padding: kDefaultPadding * 0.5),
              //                Container(
              //                  width: MediaQuery.of(context).size.width * 0.28,
              //                  child: TextWhite(
              //                      text:
              //                          "La fecha en la Cristóbal Colón llegó a América es en 1495.",
              //                      size: 15,
              //                      padding: kDefaultPadding * 0.5),
              //                ),
              //              ],
              //            ),
              //            Image.network(
              //                "https://img2.rtve.es/i/?w=1600&i=1589899238129.jpg"),
              //          ],
              //        ),
              //      ),
              //      Container(
              //        height: 300,
              //        padding: const EdgeInsets.all(8),
              //        child: const Text('Heed not the rabble'),
              //        color: Colors.green.withOpacity(0.2),
              //      ),
              //    ],
              //  ),
              //),
            ],
          )
        ],
      ),
    );
  }
}

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

class TextWhite extends StatelessWidget {
  const TextWhite({
    Key key,
    @required this.text,
    @required this.size,
    @required this.padding,
  }) : super(key: key);
  final String text;
  final double size;
  final double padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: Text(
        text,
        style: TextStyle(
          fontSize: size,
          color: Colors.white,
        ),
      ),
    );
  }
}
