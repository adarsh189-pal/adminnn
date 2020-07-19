import 'package:flutter/material.dart';
import 'Reusable_icons.dart';
import 'Reusable_expansion.dart';
import 'Reusable_tile.dart';

class NavDrawer extends StatefulWidget {
  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  List<String> _locations = ['A', 'B', 'C', 'D']; // Option 2
  String _selectedLocation;
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
            color: Color(0xFF262AAA),
            child: SafeArea(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  ReusableTile(
                    textTile: 'Master',
                    iconTile: Icons.person,
                    secondTextTile: 'Add Master',
                    thirdTextTile: 'Delete Master',
                  ),
                  ReusableExpansion(
                      textExpansion: 'Dean',
                      iconExpansion: Icons.domain,
                      secondTextExpansion: 'Add Dean',
                      thirdTextExpansion: 'Edit Dean',
                      fourthTextExpansion: 'Delete Dean'),
                  ReusableExpansion(
                      textExpansion: 'HOD',
                      iconExpansion: Icons.domain,
                      secondTextExpansion: 'Add HOD',
                      thirdTextExpansion: 'Edit HOD',
                      fourthTextExpansion: 'Delete HOD'),
                  ReusableExpansion(
                      textExpansion: 'Teacher',
                      iconExpansion: Icons.domain,
                      secondTextExpansion: 'Add Teacher',
                      thirdTextExpansion: 'Edit Teacher',
                      fourthTextExpansion: 'Delete Teacher'),
                  ReusableTile(
                    textTile: 'Student',
                    iconTile: Icons.person,
                    secondTextTile: 'Add Student',
                    thirdTextTile: 'Delete Student',
                  ),
                  ReusableTile(
                      textTile: 'School',
                      iconTile: Icons.home,
                      secondTextTile: 'Add School',
                      thirdTextTile: 'Delete School',
                      onTapped: () {
                        Dialog errorDialog = Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  12.0)), //this right here
                          child: Container(
                            height: 300.0,
                            width: 300.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: Text(
                                    'Add School',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20.0),
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          labelText: 'Add School'),
                                    )),
                                Padding(padding: EdgeInsets.only(top: 10.0)),
                                DropdownButton(
                                  hint: Text(
                                      'Please choose a location'), // Not necessary for Option 1
                                  value: _selectedLocation,
                                  onChanged: (newValue) {
                                    setState(() {
                                      _selectedLocation = newValue;
                                    });
                                  },
                                  items: _locations.map((location) {
                                    return DropdownMenuItem(
                                      child: new Text(location),
                                      value: location,
                                    );
                                  }).toList(),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    RaisedButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                        color: Color(0xFF262AAA),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text(
                                          'CANCEL',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12.0),
                                        )),
                                    SizedBox(
                                      width: 25.0,
                                    ),
                                    RaisedButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                      color: Color(0xFF262AAA),
                                      padding: EdgeInsets.only(right: 5.0),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text(
                                        'OK',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.0),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                        showDialog(
                            context: context,
                            builder: (BuildContext context) => errorDialog);
                      }),
                  ReusableTile(
                    textTile: 'Department',
                    iconTile: Icons.domain,
                    secondTextTile: 'Add Department',
                    thirdTextTile: 'Delete Department',
                  ),
                  ReusableTile(
                    textTile: 'Year',
                    iconTile: Icons.schedule,
                    secondTextTile: 'Add Year',
                    thirdTextTile: 'Delete Year',
                  ),
                  ReusableTile(
                    textTile: 'Classes',
                    iconTile: Icons.folder,
                    secondTextTile: 'Add Classes',
                    thirdTextTile: 'Delete Classes',
                  ),
                  ReusableTile(
                    textTile: 'Groups',
                    iconTile: Icons.folder_open,
                    secondTextTile: 'Add Groups',
                    thirdTextTile: 'Delete Groups',
                  ),
                  ReusableExpansion(
                      textExpansion: 'Subjects',
                      iconExpansion: Icons.storage,
                      secondTextExpansion: 'Add Subjects',
                      thirdTextExpansion: 'Edit Subjects',
                      fourthTextExpansion: 'Delete Subjects'),
                  ReusableTile(
                      textTile: 'Timings',
                      iconTile: Icons.watch_later,
                      secondTextTile: 'Add Timings',
                      thirdTextTile: 'Delete Timings',
                      onTapped: () {
                        Dialog errorDialog = Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  12.0)), //this right here
                          child: Container(
                            height: 270.0,
                            width: 290.0,
                            child: Expanded(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: Text(
                                      'Add Timings',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20.0),
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            labelText: 'Start Time'),
                                      )),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.0),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          labelText: 'End Time'),
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.only(top: 1.0)),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      RaisedButton(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0)),
                                          color: Color(0xFF262AAA),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text(
                                            'CANCEL',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.0),
                                          )),
                                      SizedBox(
                                        width: 25.0,
                                      ),
                                      RaisedButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                        color: Color(0xFF262AAA),
                                        padding: EdgeInsets.only(right: 5.0),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text(
                                          'OK',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12.0),
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
                            context: context,
                            builder: (BuildContext context) => errorDialog);
                      }),
                  ReusableTile(
                    textTile: 'Periods',
                    iconTile: Icons.watch_later,
                    secondTextTile: 'Add Periods',
                    thirdTextTile: 'Delete Periods',
                  ),
                  ReusableTile(
                      textTile: 'Days',
                      iconTile: Icons.keyboard_backspace,
                      secondTextTile: 'Add Days',
                      thirdTextTile: 'Delete Days',
                      onTapped: () {
                        Dialog errorDialog = Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  12.0)), //this right here
                          child: Container(
                            height: 200.0,
                            width: 200.0,
                            child: Expanded(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: Text(
                                      'Add Days',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20.0),
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            labelText: 'Add Days'),
                                      )),
                                  Padding(padding: EdgeInsets.only(top: 10.0)),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      RaisedButton(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0)),
                                          color: Color(0xFF262AAA),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text(
                                            'CANCEL',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.0),
                                          )),
                                      SizedBox(
                                        width: 25.0,
                                      ),
                                      RaisedButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                        color: Color(0xFF262AAA),
                                        padding: EdgeInsets.only(right: 5.0),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text(
                                          'OK',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12.0),
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
                            context: context,
                            builder: (BuildContext context) => errorDialog);
                      }),
                  ReusableExpansion(
                      textExpansion: 'TimeTable',
                      iconExpansion: Icons.insert_invitation,
                      secondTextExpansion: 'Add TimeTable',
                      thirdTextExpansion: 'Edit TimeTable',
                      fourthTextExpansion: 'Delete TimeTable'),
                  ReusableTile(
                    textTile: 'MarkSheet Type',
                    iconTile: Icons.create,
                    secondTextTile: 'Add MarkSheet Type',
                    thirdTextTile: 'Delete MarkSheet Type',
                  ),
                  ReusableIcons(icons: Icons.add, text: 'Add Quiz'),
                  ReusableIcons(icons: Icons.storage, text: 'Export Data'),
                  ReusableIcons(icons: Icons.create, text: 'Change Password'),
                  ReusableIcons(icons: Icons.input, text: 'LogOut'),
                ],
              ),
            )));
  }
}
