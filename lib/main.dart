import 'package:flutter/material.dart';
import 'package:healthcare/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
          scaffoldBackgroundColor: Color(0xffEDEDED),
          bottomAppBarColor: Color(0xffEDEDED)),
    );
  }
}
