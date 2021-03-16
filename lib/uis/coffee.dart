import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color mainColor = Color(0xFF472F23);
Color secondColor = Color(0xFFC08C59);
Color thirdColor = Color(0xFF533828);

class Coffee extends StatefulWidget{
  @override
  PageState createState() => PageState();
}

class PageState extends State<Coffee>{

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        decoration: BoxDecoration(
        ),
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              color: secondColor,
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.6),
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        "Rs.230",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.06,
                          fontWeight: FontWeight.w500
                        ),
                      )
                    ),
                    Container(
                        margin: EdgeInsets.all(5),
                        child: Text(
                          "Cappuccino",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.075,
                            fontWeight: FontWeight.w500
                          ),
                        )
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 25, horizontal: 40),
                        child: Text(
                          "Chocolate flavoured variant of a caffe latte",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.0455,
                            fontWeight: FontWeight.w400,
                            color: thirdColor
                          ),
                          textAlign: TextAlign.center,
                        )
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: mainColor,
                      ),
                      child: Text(
                        "+ ADD TO ORDER",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.0455,
                            fontWeight: FontWeight.w400,
                            color: secondColor
                        ),
                      )
                    )
                  ],
                ),
              ),
            ),
            Container(
              // color: Colors.white,
              child: CustomPaint(
                painter: NotchBackground(),
                child: Container(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/img/coffeelogo.PNG', width: MediaQuery.of(context).size.width * 0.1,),
                                Text(
                                  "Koffein",
                                  style: TextStyle(
                                      color: secondColor,
                                      fontSize: MediaQuery.of(context).size.width * 0.07,
                                      fontWeight: FontWeight.w500
                                  ),
                                )
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: thirdColor,
                                  borderRadius: BorderRadius.circular(12)
                              ),
                              child: Icon(Icons.emoji_food_beverage_rounded, color: secondColor,),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: thirdColor,
                          ),
                          child: IntrinsicWidth(
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: InkWell(
                                    onTap: (){
                                      setState(() {
                                        selectedIndex = 0;
                                      });
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                                        decoration: BoxDecoration(
                                            color: selectedIndex == 0 ? secondColor : thirdColor,
                                            borderRadius: BorderRadius.circular(12)
                                        ),
                                        child: Text(
                                          "Coffee",
                                          style: TextStyle(
                                              color: selectedIndex == 0 ? thirdColor : secondColor,
                                              fontSize: MediaQuery.of(context).size.width * 0.045
                                          ),
                                        )
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: InkWell(
                                    onTap: (){
                                      setState(() {
                                        selectedIndex = 1;
                                      });
                                    },
                                    child: Container(
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                                        decoration: BoxDecoration(
                                            color: selectedIndex == 1 ? secondColor : thirdColor,
                                            borderRadius: BorderRadius.circular(12)
                                        ),
                                        child: Text(
                                          "Cake",
                                          style: TextStyle(
                                              color: selectedIndex == 1 ? thirdColor : secondColor,
                                              fontSize: MediaQuery.of(context).size.width * 0.045
                                          ),
                                        )
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: InkWell(
                                    onTap: (){
                                      setState(() {
                                        selectedIndex = 2;
                                      });
                                    },
                                    child: Container(
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                                        decoration: BoxDecoration(
                                            color: selectedIndex == 2 ? secondColor : thirdColor,
                                            borderRadius: BorderRadius.circular(12)
                                        ),
                                        child: Text(
                                          "Snack",
                                          style: TextStyle(
                                              color: selectedIndex == 2 ? thirdColor : secondColor,
                                              fontSize: MediaQuery.of(context).size.width * 0.045
                                          ),
                                        )
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,

                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0, MediaQuery.of(context).size.height/2.5 - MediaQuery.of(context).size.width/4),
              child: CarouselSlider(
                options: CarouselOptions(
                  initialPage: 1,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.scale,
                  viewportFraction: 0.6,
                  height: MediaQuery.of(context).size.width * 0.62
                ),
                items: [
                  Image.asset(
                    'assets/img/mug2.png',
                    width: MediaQuery.of(context).size.width * 0.9,
                  ),
                  Image.asset(
                    'assets/img/mug2.png',
                    width: MediaQuery.of(context).size.width * 0.9,
                  ),
                  Image.asset(
                    'assets/img/mug2.png',
                    width: MediaQuery.of(context).size.width * 0.9,
                  ),
                ],
              ),
            ),
            // Transform.translate(
            //   offset: Offset(MediaQuery.of(context).size.width/5, MediaQuery.of(context).size.height/2.5 - MediaQuery.of(context).size.width/4),
            //   child: Container(
            //     decoration: BoxDecoration(
            //       border: Border.all(color: Colors.red)
            //     ),
            //     child:Image.asset(
            //       'assets/img/mug2.png',
            //       width: MediaQuery.of(context).size.width * 0.6,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

class NotchBackground extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = mainColor
      ..style = PaintingStyle.fill;

    final path = new Path()
      ..lineTo(0, size.height/2.5)
      ..lineTo(size.width * 0.2-20, size.height/2.5)
      ..arcToPoint(Offset(size.width * 0.2, size.height/2.5 + 20), radius: Radius.circular(20), largeArc: false)
      // ..moveTo(size.width * 0.2, size.height/3 + 5)
      ..arcToPoint(Offset(size.width * 0.8, size.height/2.5 + 20), radius: Radius.circular(size.width * 0.3), largeArc: true, clockwise: false)
      ..arcToPoint(Offset(size.width * 0.8+20, size.height/2.5), radius: Radius.circular(20), largeArc: false)
      ..lineTo(size.width, size.height/2.5)
      ..lineTo(size.width, 0)
      ..lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

