import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reusable_widgets_app/utilities/appsettings.dart';

class ColorCell extends StatelessWidget {
  final Color color;

  const ColorCell({Key key, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 72,
      height: 72,
      decoration: BoxDecoration(color: color),
      child: context.watch<AppSettings>().appColor == color
          ? Icon(
              Icons.check_circle,
              color: Colors.white,
            )
          : SizedBox(),
    );
  }
}
