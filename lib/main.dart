import 'package:flutter/material.dart';
import 'package:yala_app/constants.dart';
import 'package:get/get.dart';
import 'package:yala_app/routes/router.dart' as IniciasRouter;
import 'package:yala_app/routes/routing_constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Yala App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      getPages: IniciasRouter.Router.getPages,
      initialRoute: RouteNames.HomeRoute,
    );
  }
}
