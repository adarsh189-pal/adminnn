import 'package:flutter/material.dart';
import 'Reusable_icons.dart';

class ReusableExpansion extends StatelessWidget {
  ReusableExpansion({@required this.textExpansion, @required this.iconExpansion, @required this.secondTextExpansion, @required this.thirdTextExpansion, @required this.fourthTextExpansion});

  final String textExpansion;
  final IconData iconExpansion;
  final String secondTextExpansion;
  final String thirdTextExpansion;
  final String fourthTextExpansion;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      trailing:
          Icon(Icons.keyboard_arrow_down, color: Colors.white),
      title: Text(
        textExpansion,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      children: <Widget>[
        ReusableIcons(icons: iconExpansion, text: secondTextExpansion),
        ReusableIcons(icons: iconExpansion, text: thirdTextExpansion),
        ReusableIcons(icons: iconExpansion, text: fourthTextExpansion),
      ],
    );
  }
}