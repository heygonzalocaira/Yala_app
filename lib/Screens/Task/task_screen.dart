import 'package:flutter/material.dart';
import 'package:yala_app/Screens/Components/button_bar.dart';
import 'package:yala_app/Screens/Components/yala_logo.dart';
import 'package:yala_app/constants.dart';

import 'Components/task_item.dart';

class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
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
      body: ListView(
        children: [
          TaskItem(
            text1: "Tareas Diarias",
            text2: "Responder 25 preguntas",
            text3: "Gana x5",
          ),
          TaskItem(
            text1: "Tareas Semanal",
            text2: "Quedar entre los 100 primeros en un ranking general",
            text3: "Gana x50",
          ),
          TaskItem(
            text1: "Tareas Mensual",
            text2: "Realizar un éxamen simulacro",
            text3: "Gana x100",
          ),
        ],
      ),
    );
  }
}
