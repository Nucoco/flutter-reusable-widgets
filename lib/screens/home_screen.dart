import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reusable_widgets_app/components/appbar.dart';
import 'package:reusable_widgets_app/screens/login_screen.dart';
import 'package:reusable_widgets_app/screens/settings_screen.dart';
import 'package:reusable_widgets_app/utilities/appsettings.dart';
import 'package:reusable_widgets_app/utilities/utils.dart';

class HomeScreen extends StatefulWidget {
  static const ROUTE_ID = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    _initTheme();
  }

  _initTheme() async {
    int themeIndex = await Utils.getThemeIndex();
    context.read<AppSettings>().updateColor(themeIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: IAppBar(
        height: 120,
        color: context.watch<AppSettings>().appColor,
        child: Stack(
          children: [
            Center(
              child: Text(
                'HOME',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.settings,
                      size: 25,
                    ),
                    onPressed: () async {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SettingsScreen();
                      }));
                    },
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              iconSize: 80,
              icon: Icon(Icons.refresh),
              color: context.watch<AppSettings>().appColor,
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return HomeScreen();
                }));
              },
            ),
            IconButton(
              iconSize: 80,
              icon: Icon(Icons.arrow_back),
              color: context.watch<AppSettings>().appColor,
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
