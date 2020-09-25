import 'package:flutter/material.dart';

class MyClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path = Path();

    // path.lineTo(0, size.height);
    // path.arcToPoint(Offset(size.width, size.height),
    //     radius: Radius.elliptical(20, 10));
    // path.lineTo(size.width, 0);

    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height - 20);
    path.quadraticBezierTo(
        size.width, size.height - 100, size.width, size.height - 70);

    path.lineTo(size.width / 4, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => false;
}
