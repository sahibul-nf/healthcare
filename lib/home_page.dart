import 'package:flutter/material.dart';
import 'package:healthcare/btm_navbar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BtmNavbar()
    );
  }
}