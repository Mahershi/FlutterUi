import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuyButton extends StatefulWidget{
  @override
  PageState createState() => PageState();
}

class PageState extends State<BuyButton>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 0.9,
        child: Stack(
          children: [
            Container(
              // width: MediaQuery.of(context).size.width * 0.1,
              alignment: Alignment.bottomCenter,
              color: Colors.black,
              child: CustomPaint(
                painter: MyPaint(),
                child: Container(
                  // height: MediaQuery.of(context).size.height*0.5,
                ),
              )
            ),
            Transform.translate(
              offset: Offset(MediaQuery.of(context).size.width * 0.73, MediaQuery.of(context).size.height * 0.9 * 0.775),
              child: Container(
                // width: MediaQuery.of(context).size.width * 0.3,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue
                ),
                child: Text(
                  "Buy",
                  textAlign: TextAlign.center,
                )
              ),
            )
          ],
        ),
      )
    );
  }
}

class MyPaint extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill;


    final path = Path()
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height*0.75)
      ..quadraticBezierTo(size.width*0.975, size.height*0.79, size.width*0.925, size.height*0.775)
      ..arcToPoint(Offset(size.width*0.925, size.height*0.875), radius: Radius.circular(size.width*0.1), clockwise: false, largeArc: true)
      ..quadraticBezierTo(size.width*0.975, size.height*0.86, size.width, size.height * 0.9)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}