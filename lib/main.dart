import 'package:flutter/material.dart';
import 'side_menu.dart';

void main() {
  runApp(Admin());
}

class Admin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AdminPage(),
    );
  }
}

class AdminPage extends StatefulWidget {
  @override
  _AdminPageState createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
        body: Center(child: Text('Admin Page')),
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Admin'),
        ));
  }
}
