import 'package:get/get.dart';
import 'package:yala_app/Screens/home/home.dart';
import 'package:yala_app/routes/routing_constants.dart';

class Router {
  static List<GetPage> getPages = [
    GetPage(
      name: RouteNames.HomeRoute,
      page: () => HomeScreen(),
    ),
    GetPage(
      name: RouteNames.TaskRoute,
      page: () => HomeScreen(),
    ),
    GetPage(
      name: RouteNames.ProfileRoute,
      page: () => HomeScreen(),
    ),
    GetPage(
      name: RouteNames.ClassicGame,
      page: () => HomeScreen(),
    ),
    GetPage(
      name: RouteNames.BRoyalGame,
      page: () => HomeScreen(),
    ),
    GetPage(
      name: RouteNames.LoginRoute,
      page: () => HomeScreen(),
    ),
  ];
}
