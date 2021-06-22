import 'package:get/get.dart';
import 'package:yala_app/Screens/Task/task_screen.dart';
import 'package:yala_app/Screens/home/home.dart';
import 'package:yala_app/routes/routing_constants.dart';

class Router {
  static List<GetPage> getPages = [
    GetPage(
      name: RouteNames.HomeRoute,
      page: () => HomeScreen(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: RouteNames.TaskRoute,
      page: () => TaskScreen(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: RouteNames.ProfileRoute,
      page: () => HomeScreen(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: RouteNames.ClassicGame,
      page: () => HomeScreen(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: RouteNames.BRoyalGame,
      page: () => HomeScreen(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: RouteNames.LoginRoute,
      page: () => HomeScreen(),
      transition: Transition.noTransition,
    ),
  ];
}
