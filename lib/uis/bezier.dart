import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bezier extends StatefulWidget{
  @override
  PageState createState() => PageState();
}

class PageState extends State<Bezier> with SingleTickerProviderStateMixin{
  AnimationController animationController;

  @override
  void initState(){
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 100)
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: AnimatedBuilder(
          animation: animationController,
          builder: (context, wi){
            return Stack(
              children: [
                CustomPaint(
                  painter: MyPainter(offset: animationController.value),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: InkWell(
                    onTap: (){
                      animationController.isDismissed ? animationController.forward() : animationController.reverse();
                    },
                    child: Container(
                        margin: EdgeInsets.all(60),
                        child: Icon(Icons.login, size: 32,)
                    ),
                  ),
                )
              ],
            );
          },
        ),
      )
    );
  }
}

class MyPainter extends CustomPainter{
  double offset;
  int multiplier1 = 200;
  int multiplier2 = 100;
  MyPainter({this.offset});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill;

    final path = Path()
      ..lineTo(0, size.height/2)
      ..quadraticBezierTo(size.width/2, size.height/3, size.width, size.height/2)
      ..lineTo(size.width, 0)
      ..close();

    final path2 = Path()
      ..lineTo(0, size.height/2 - (offset*multiplier1))
      ..quadraticBezierTo(size.width * 0.25, size.height * 0.4 - (offset*multiplier1), size.width/2, size.height/2 - (offset*multiplier1))
      ..quadraticBezierTo(size.width * 0.75, size.height * 0.6  - (offset*multiplier1), size.width, size.height/2 - (offset*multiplier2))
      ..lineTo(size.width, 0)
      ..close();

    final path3 = Path()
      ..lineTo(0, size.height*0.5)
      ..cubicTo(size.width/3, size.height * 0.6, 2*size.width/3, size.height * 0.4, size.width, size.height * 0.6)
      ..lineTo(size.width, 0)
      ..close();

    canvas.drawPath(path3, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}