import 'package:flutter/material.dart';
import 'package:nubankclone/pages/home/widgets/card_app.dart';
import 'package:nubankclone/pages/home/widgets/my_app_bar.dart';
import 'package:nubankclone/pages/home/widgets/my_dots_app.dart';
import 'package:nubankclone/pages/home/widgets/page_view_app.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showMenu;
  int _currentIndex;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _showMenu = false;
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    double _screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFF612F74),
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          MyAppBar(
            showMenu: _showMenu,
            onTap: () {
              setState(() {
                _showMenu = !_showMenu;
              });
            },
          ),
          PageViewApp(
            top: _screenHeight * 0.24,
            onChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          MyDotsApp(
            top: _screenHeight * 0.75,
            currentIndex: _currentIndex,
          )
        ],
      ),
    );
  }
}
