import 'package:flutter/material.dart';
import 'package:reusable_widgets_app/utilities/constants.dart';

class AppSettings extends ChangeNotifier {
  Color _appColor = Colors.teal;

  Color get appColor => _appColor;

  void updateColor(int index) {
    _appColor = Constants.colors[index];
    notifyListeners();
  }
}
