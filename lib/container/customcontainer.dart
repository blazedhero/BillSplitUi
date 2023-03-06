import 'package:flutter/material.dart';

class CustomContainerDesign extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double w = size.width;
    double h = size.height;

    path.moveTo(0, h / 3);
    path.lineTo(0, h);
    path.lineTo(w, h);
    path.lineTo(w, 0);
    path.lineTo(w / 3.8, 0);
    path.lineTo(w / 3.8, h / 4);
    path.quadraticBezierTo(w / 4.5, h / 3, w / 5, h / 3);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
