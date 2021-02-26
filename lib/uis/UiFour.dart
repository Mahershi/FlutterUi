import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class UiFour extends StatefulWidget{
  @override
  UiFourState createState() => UiFourState();
}

class UiFourState extends State<UiFour>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(right: 30),
          child: CustomPaint(
            painter: Sky(),
            child: Container(

            )
          ),
        )
      )
    );
  }
}

class Sky extends CustomPainter{
  BuildContext thisContext;

  Sky({this.thisContext});

  @override
  void paint(Canvas canvas, Size size) {
    print(size.toString());
    final paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill;

    final path = new Path()
      ..moveTo(size.width * .6, 0)
      ..quadraticBezierTo(
        size.width * .7,
        size.height * .08,
        size.width * .9,
        size.height * .05,
      )
      ..arcToPoint(
        Offset(
          size.width * .93,
          size.height * .15,
        ),
        radius: Radius.circular(size.height * .05),
        largeArc: true,
      )
      ..cubicTo(
        size.width * .6,
        size.height * .15,
        size.width * .5,
        size.height * .46,
        0,
        size.height * .3,
      )
      ..lineTo(0, 0)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}