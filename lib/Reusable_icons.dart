import 'package:flutter/material.dart';

class ReusableIcons extends StatelessWidget {
  ReusableIcons({@required this.icons, @required this.text, this.onPressed});

  final IconData icons;
  final String text;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Icon(
          icons,
          color: Colors.white,
        ),
        title: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
        onTap: onPressed);
  }
}
