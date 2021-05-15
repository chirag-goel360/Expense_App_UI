import 'package:expense_tracker_ui/screens/mainpage.dart';
import 'package:expense_tracker_ui/screens/slided_page.dart';
import 'package:flutter/material.dart';

Color kPrimaryBlue = Colors.indigo;

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        MainPage(),
        ExpensePage(),
      ],
    );
  }
}
