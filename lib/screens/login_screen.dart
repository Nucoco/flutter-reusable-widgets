import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reusable_widgets_app/components/btn.dart';
import 'package:reusable_widgets_app/components/link_btn.dart';
import 'package:reusable_widgets_app/components/tf.dart';
import 'package:reusable_widgets_app/screens/home_screen.dart';
import 'package:reusable_widgets_app/utilities/appsettings.dart';
import 'package:reusable_widgets_app/utilities/utils.dart';

class LoginScreen extends StatefulWidget {
  static const ROUTE_ID = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController;
  TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOGIN'),
        backgroundColor: context.watch<AppSettings>().appColor,
      ),
      body: Container(
        child: Column(
          children: [
            TF(
              controller: _emailController,
              helpText: 'EMAIL',
              hintText: 'email',
              prefixIcon: Icons.email,
            ),
            TF(
              controller: _passwordController,
              helpText: 'PASSWORD',
              hintText: 'password',
              isPassword: true,
              prefixIcon: Icons.lock_open,
            ),
            Row(
              children: [
                Expanded(
                  child: Btn(
                    onPress: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return HomeScreen();
                      }));
                      Utils.saveLoggedIn(true);
                    },
                    text: 'LOGIN',
                    color: context.watch<AppSettings>().appColor,
                  ),
                ),
              ],
            ),
            LinkBtn(
              text: 'Forgot Password?',
              color: context.watch<AppSettings>().appColor,
              onPress: () {},
            ),
          ],
        ),
      ),
    );
  }
}
