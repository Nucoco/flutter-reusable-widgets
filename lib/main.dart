import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reusable_widgets_app/screens/login_screen.dart';
import 'package:reusable_widgets_app/utilities/appsettings.dart';
import 'package:reusable_widgets_app/utilities/routes.dart';
import 'package:reusable_widgets_app/utilities/utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  String route = Routes.initialRoute();
  bool isLoggedIn = await Utils.isLoggedIn();
  if (isLoggedIn) {
    route = Routes.homeRoute();
  }
  runApp(MyApp(
    route: route,
  ));
}

class MyApp extends StatelessWidget {
  MyApp({this.route});
  final String route;
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AppSettings(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: Routes.routes(),
        initialRoute: route,
      ),
    );
  }
}
