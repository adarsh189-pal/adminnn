import 'package:flutter/material.dart';
import 'Reusable_icons.dart';
import 'Reusable_expansion.dart';
import 'Reusable_tile.dart';

class NavDrawer extends StatelessWidget {
  @override
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
                  ),
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
                  ),
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
                  ),
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
