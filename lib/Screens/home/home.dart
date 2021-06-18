import 'package:flutter/material.dart';
import 'package:yala_app/Screens/home/Components/button_bar.dart';
import 'package:yala_app/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ButtonNavVar(),
      //appBar: ,
    );
  }
}
