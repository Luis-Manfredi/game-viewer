import 'package:flutter/material.dart';

class MyCurve extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height);
    // var firstStart = Offset(size.width / 2, size.height);
    // var firstEnd = Offset(size.width, size.height - 55);
    // path.quadraticBezierTo(
    //     firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    var firstPoint = Offset(size.width / 2, 250);
    var secondPoint = const Offset(0, 0);
    path.quadraticBezierTo(
        firstPoint.dx, firstPoint.dy, secondPoint.dx, secondPoint.dy);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
