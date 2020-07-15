import 'package:flutter/material.dart';

class ReusableIcons extends StatelessWidget {
  ReusableIcons({@required this.icons, @required this.text});

  final IconData icons;
  final String text;
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
        onTap: () {
          Dialog errorDialog = Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)), //this right here
            child: Container(
              height: 250.0,
              width: 250.0,
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        'Add Timings',
                        style: TextStyle(color: Colors.black, fontSize: 20.0),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.all(10.0),
                        child: TextFormField(
                          decoration: InputDecoration(labelText: 'Start Time'),
                        )),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: TextFormField(
                        decoration: InputDecoration(labelText: 'End Time'),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              'CANCEL',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 12.0),
                            )),
                        FlatButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'CREATE',
                            style: TextStyle(
                              color: Colors.black, fontSize: 12.0
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
          showDialog(
              context: context, builder: (BuildContext context) => errorDialog);
        });
  }
}
