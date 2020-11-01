import "package:flutter/material.dart";
import './home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red,
        textTheme: TextTheme(
          headline1: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Calculator"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: HomePage(),
      ),
    );
  }
}
