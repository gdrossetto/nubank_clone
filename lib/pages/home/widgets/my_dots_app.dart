import 'package:flutter/material.dart';

class MyDotsApp extends StatelessWidget {
  final double top;
  final int currentIndex;

  const MyDotsApp({Key key, this.top, this.currentIndex}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      child: Row(
        children: <Widget>[
          AnimatedContainer(
            duration: Duration(
              milliseconds: 300,
            ),
            height: 7,
            width: 7,
            decoration: BoxDecoration(
              color: currentIndex == 0 ? Colors.white : Colors.grey,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          AnimatedContainer(
            duration: Duration(
              milliseconds: 300,
            ),
            height: 7,
            width: 7,
            decoration: BoxDecoration(
              color: currentIndex == 1 ? Colors.white : Colors.white38,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          AnimatedContainer(
            duration: Duration(
              milliseconds: 300,
            ),
            height: 7,
            width: 7,
            decoration: BoxDecoration(
              color: currentIndex == 2 ? Colors.white : Colors.white38,
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}
