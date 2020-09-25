import 'package:flutter/material.dart';
import 'package:healthcare/view/home_page.dart';
import 'package:healthcare/view/initial_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InitialPage(),
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffEDEDED),
      ),
    );
  }
}
