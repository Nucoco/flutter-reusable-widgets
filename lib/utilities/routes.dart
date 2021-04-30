import 'package:reusable_widgets_app/screens/home_screen.dart';
import 'package:reusable_widgets_app/screens/login_screen.dart';
import 'package:reusable_widgets_app/screens/settings_screen.dart';

class Routes {
  static routes() {
    return {
      LoginScreen.ROUTE_ID: (context) => LoginScreen(),
      HomeScreen.ROUTE_ID: (context) => HomeScreen(),
      SettingsScreen.ROUTE_ID: (context) => SettingsScreen(),
    };
  }

  static initialRoute() {
    return LoginScreen.ROUTE_ID;
  }

  static homeRoute() {
    return HomeScreen.ROUTE_ID;
  }
}
