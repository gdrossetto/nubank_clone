import 'package:flutter/material.dart';
import 'package:nubankclone/pages/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Nubank Clone',
        theme: ThemeData(
            primarySwatch: Colors.purple,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            brightness: Brightness.dark),
        home: HomePage());
  }
}
