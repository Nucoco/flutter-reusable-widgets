import 'package:flutter/material.dart';

class LinkBtn extends StatelessWidget {
  final Function onPress;
  final String text;
  final Color color;

  const LinkBtn({Key key, this.onPress, this.text, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: FlatButton(
        onPressed: onPress,
        child: Text(
          text,
          style: TextStyle(color: color),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3.0),
        ),
      ),
    );
  }
}
