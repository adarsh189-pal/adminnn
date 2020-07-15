import 'package:flutter/material.dart';
import 'Reusable_icons.dart';

class ReusableTile extends StatelessWidget {
  ReusableTile({@required this.textTile, @required this.iconTile, @required this.secondTextTile, @required this.thirdTextTile});

  final String textTile;
  final IconData iconTile;
  final String secondTextTile;
  final String thirdTextTile;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      trailing: Icon(
        Icons.keyboard_arrow_down,
        color: Colors.white,
      ),
      title: Text(
        textTile,
        style: TextStyle(color: Colors.white),
      ),
      children: <Widget>[
        ReusableIcons(
            icons: iconTile, text: secondTextTile),
        ReusableIcons(
            icons: iconTile, text: thirdTextTile),
      ],
    );
  }
}