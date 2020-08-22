import 'package:flutter/material.dart';

class BtmNavbar extends StatelessWidget {
  Color active = Colors.white;
  Color noActive = Colors.white70;
  double _iconSize = 30;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25)
        ),
        child: Container(
          color: Color(0xff081F41),
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  iconSize: _iconSize,
                  icon: Icon(Icons.person_outline, color: noActive),
                  onPressed: null),
              IconButton(
                  iconSize: _iconSize,
                  icon: Icon(Icons.home, color: active),
                  onPressed: null),
              IconButton(
                  iconSize: _iconSize,
                  icon: Icon(Icons.chat_bubble_outline, color: noActive),
                  onPressed: null),
            ],
          ),
        ),
      ),
    );
  }
}
