import 'package:flutter/material.dart';
import 'package:yala_app/constants.dart';
import 'package:yala_app/Screens/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yala App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      home: HomeScreen(),
    );
  }
}
