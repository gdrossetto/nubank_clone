import 'package:flutter/material.dart';
import 'package:nubankclone/pages/home/widgets/card_app.dart';

class PageViewApp extends StatelessWidget {
  final double top;
  final ValueChanged<int> onChanged;
  const PageViewApp({Key key, this.top, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;

    return Positioned(
      top: top,
      height: _height * .50,
      // width: _screenWidth,
      left: 0,
      right: 0,
      child: SizedBox(
        height: _height * 0.3,
        child: PageView(
          onPageChanged: onChanged,
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            CardApp(),
            CardApp(),
            CardApp(),
          ],
        ),
      ),
    );
  }
}
