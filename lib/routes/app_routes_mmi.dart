import 'package:examen_mmi/screens/alert_screen_mmi.dart';
import 'package:flutter/material.dart';
import 'package:examen_mmi/models/menu_option_mmi.dart';
import 'package:examen_mmi/screens/home_screen_mmi.dart';
import 'package:examen_mmi/screens/Sign_in_screen_mmi.dart';
import 'package:examen_mmi/screens/list_view_screen.dart';

class AppRoutesMmi {
  static final MenuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        icon: Icons.holiday_village,
        name: 'Home Screen',
        screen: const HomeScreenMmi()),
    MenuOption(
        route: 'signin',
        icon: Icons.person,
        name: 'signin Screen',
        screen: const SignInScreenMmi()),
            MenuOption(
        route: 'listview',
        icon: Icons.person,
        name: 'listview',
        screen: const ListviewMmi()),
  ];
  static const initialRoute = 'home';
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in MenuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings) {
    return MaterialPageRoute(builder: (context) => const AlertScreenMmi());
  }
}
