import 'package:flutter/material.dart';
import 'Reusable_icons.dart';

class ReusableTile extends StatelessWidget {
  ReusableTile(
      {@required this.textTile,
      @required this.iconTile,
      @required this.secondTextTile,
      @required this.thirdTextTile,
      this.onTapped});

  final String textTile;
  final IconData iconTile;
  final String secondTextTile;
  final String thirdTextTile;
  final Function onTapped;

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
            icons: iconTile,
            text: secondTextTile,
            onPressed: onTapped,
          ),
          ReusableIcons(
              icons: iconTile, text: thirdTextTile, onPressed: onTapped)
        ]);
  }
}
