import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare/model/my_color.dart';
import 'package:healthcare/view/chat_page.dart';
import 'package:healthcare/view/dashboard_admin.dart';
import 'package:healthcare/view/home_page.dart';
import 'package:healthcare/view/user_page.dart';

class InitialPage extends StatefulWidget {
  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {

  int _cIndex = 1;

  final List<Widget> destination = [UserPage(), HomePage(), ChatPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: destination[_cIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), topLeft: Radius.circular(20)),
        child: Container(
          height: 70,
          child: BottomNavigationBar(
            selectedFontSize: 12,
            backgroundColor: MyColor().color2,
            iconSize: 30,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            unselectedItemColor: MyColor().color5,
            selectedItemColor: MyColor().color5,
            currentIndex: _cIndex,
            items: [
              BottomNavigationBarItem(
                icon: (_cIndex == 0)
                    ? Icon(EvaIcons.person)
                    : Icon(EvaIcons.personOutline),
                title: Text('Account',
                    style: GoogleFonts.sourceSansPro(fontSize: 14)),
              ),
              BottomNavigationBarItem(
                icon: (_cIndex == 1)
                    ? Icon(EvaIcons.home)
                    : Icon(EvaIcons.homeOutline),
                title: Text('Home',
                    style: GoogleFonts.sourceSansPro(fontSize: 14)),
              ),
              BottomNavigationBarItem(
                icon: (_cIndex == 2)
                    ? Icon(EvaIcons.messageCircle)
                    : Icon(EvaIcons.messageCircleOutline),
                title: Text(
                  'Account',
                  // style: GoogleFonts.sourceSansPro(fontSize: 14)
                ),
              )
            ],
            onTap: (int index) {
              setState(() {
                _cIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
