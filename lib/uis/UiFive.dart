import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class UiFive extends StatefulWidget{
  @override
  UiFiveState createState() => UiFiveState();
}

class UiFiveState extends State<UiFive>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/img/bg1.jpg'), fit: BoxFit.cover, colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Material(
                      borderRadius: BorderRadius.circular(60),
                      elevation: 10,
                      color: Colors.transparent,
                      shadowColor: Colors.grey.withOpacity(0.1),
                      child: NotificationListener<OverscrollIndicatorNotification>(
                        onNotification: (overscroll){
                          overscroll.disallowGlow();
                          return ;
                        },
                        child: ListView(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 50),
                              decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(60), topLeft: Radius.circular(60)),color: Colors.white,),
                              child: Column(
                                children: [
                                  Container(
                                    height: 100,
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(10),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "Username",
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.grey.withOpacity(0.5)),
                                          borderRadius: BorderRadius.circular(20)
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.blueAccent.withOpacity(0.5), width: 2),
                                            borderRadius: BorderRadius.circular(20)
                                        )
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(10),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText: "Password",
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.grey.withOpacity(0.5)),
                                              borderRadius: BorderRadius.circular(20)
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.blueAccent.withOpacity(0.5), width: 2),
                                              borderRadius: BorderRadius.circular(20)
                                          )
                                      ),
                                    ),
                                  ),
                                  // Container(
                                  //   height: 100,
                                  // ),
                                ],
                              ),
                            ),
                            Container(
                              // padding: EdgeInsets.all(20),
                              child: CustomPaint(
                                  // painter: Sky(),
                                  foregroundPainter: Sky(),
                                  child: Container(
                                    // decoration: BoxDecoration(border: Border.all(color: Colors.red)),
                                    height: 0,
                                  )
                              ),
                            ),
                            Container(
                              height: 60,
                              color: Colors.transparent,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(60), bottomLeft: Radius.circular(60)), color: Colors.white,),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  InkWell(
                                    child: Container(
                                      padding: EdgeInsets.all(10),
                                      margin: EdgeInsets.fromLTRB(10, 8, 10, 4),
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.blue.withOpacity(0.7))),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(Icons.account_circle, color: Colors.blue,),
                                          SizedBox(width: 5,),
                                          Container(
                                            child: Text("Login with Google")
                                          )
                                        ],
                                      ),
                                    )
                                  ),
                                  InkWell(
                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                        margin: EdgeInsets.fromLTRB(10, 4, 10, 20),
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.blue.withOpacity(0.7))),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(Icons.account_circle, color: Colors.blue),
                                            SizedBox(width: 5,),
                                            Container(
                                                child: Text("Login with Google")
                                            )
                                          ],
                                        ),
                                      )
                                  )
                                ],
                              )
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white,),
                      // width: MediaQuery.of(context).size.width/2,

                      child: Icon(
                        Icons.login, size: MediaQuery.of(context).size.width * 0.1, color: Colors.green
                      )
                    ),
                  )
                ],
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
      ..color = Colors.white
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

    final path2 = Path()
      ..moveTo(60, size.height*0.5)
      ..lineTo(size.width / 2, size.height*0.5)
      ..arcToPoint(Offset(size.width/2, size.height*0.5 + 60), radius: Radius.circular(30), largeArc: true)
      // ..moveTo(60, size.height*0.5 + 60)
      ..lineTo(60, size.height*0.5 + 60)
      ..arcToPoint(Offset(60, size.height*0.5), radius: Radius.circular(30), largeArc: true);

    final path3 = Path()
      ..moveTo(0, size.height*0.5)
      ..arcToPoint(Offset(0, size.height*0.5 + 60), radius: Radius.circular(30), largeArc: true)
      ..moveTo(0, size.height*0.5 + 60)
      ..lineTo(size.width, size.height*0.5 + 60)
      ..arcToPoint(Offset(size.width, size.height*0.5), radius: Radius.circular(30))

      ..lineTo(0, size.height*0.5);

    canvas.drawPath(path3, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}