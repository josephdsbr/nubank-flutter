import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nubank/screens/home/widgets/my_app_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _showMenu;

  @override
  void initState() {
    super.initState();
    _showMenu = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          MyAppBar(showMenu: _showMenu, onTap: () {
            setState(() {
              _showMenu = !_showMenu;
            });
          },)
        ],
      ),
    );
  }
}
