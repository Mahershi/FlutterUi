// <a href='https://www.freepik.com/vectors/background'>Background vector created by freepik - www.freepik.com</a>

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui/main.dart';

class BottomNav2 extends StatefulWidget{
  @override
  PageState createState() => PageState();
}

class PageState extends State<BottomNav2>{
  static Color mainColor = Color(0xFFFF997A);
  static Color secondColor = Color(0xFFFFFAF8);
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 20, bottom: MediaQuery.of(context).size.height * 0.08 + 40, left: 20, right: 20),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              // border: Border.all(color: Colors.black)
                          ),
                          child: Icon(
                            Icons.menu_rounded,
                            size: MediaQuery.of(context).size.width * 0.07,
                          ),
                        ),
                        Container(
                          // alignment: Alignment.center,
                          decoration: BoxDecoration(
                              // border: Border.all(color: Colors.black)
                          ),
                          child: Text(
                            "Today's Classes",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width * 0.06,
                              fontWeight: FontWeight.w300
                            ),
                          )
                        ),
                        Container(
                          decoration: BoxDecoration(
                              // border: Border.all(color: Colors.black)
                          ),
                          child: Stack(
                            children: [
                              Icon(
                                Icons.notifications_none_rounded,
                                size: MediaQuery.of(context).size.width * 0.07,
                              ),
                              Transform.translate(
                                offset: Offset(MediaQuery.of(context).size.width * 0.07/1.5, MediaQuery.of(context).size.width * 0.07/4),
                                child: Container(
                                  height: MediaQuery.of(context).size.width * 0.02,
                                  width: MediaQuery.of(context).size.width * 0.02,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: mainColor
                                  ),
                                ),
                              )
                            ],
                          )
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: mainColor.withOpacity(0.85),
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/img/bg2.jpg'
                            ),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(mainColor.withOpacity(0.35), BlendMode.dstATop)
                          )
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(bottom: 8),
                                      child: Text(
                                        "History of Physics",
                                        style: TextStyle(
                                          fontSize: MediaQuery.of(context).size.width * 0.05,
                                          color: secondColor,
                                          fontWeight: FontWeight.w500
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "24 March, 18pm - 19pm",
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context).size.width * 0.03,
                                          color: secondColor,
                                          fontWeight: FontWeight.w300
                                      ),
                                    )
                                  ],
                                ),
                                Icon(Icons.more_horiz_rounded, color: secondColor,)
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    // decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                                    child: Image.asset(
                                      'assets/img/profile.png',
                                      width: MediaQuery.of(context).size.width * 0.15,
                                    )
                                  ),
                                  SizedBox(width: 10,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.symmetric(vertical: 5),
                                        child: Text(
                                          "Mahershi Bhavsar",
                                          style: TextStyle(
                                              fontSize: MediaQuery.of(context).size.width * 0.045,
                                              color: secondColor,
                                              fontWeight: FontWeight.w400
                                          ),
                                        )
                                      ),
                                      Container(
                                          child: Text(
                                            "Professor",
                                            style: TextStyle(
                                                fontSize: MediaQuery.of(context).size.width * 0.03,
                                                color: secondColor,
                                                fontWeight: FontWeight.w400
                                            ),
                                          )
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                height: MediaQuery.of(context).size.height * 0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height * 0.04),
                  color: mainColor
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: (){
                        setState(() {
                          selectedIndex = 0;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.home_rounded, color: secondColor, size: MediaQuery.of(context).size.width * 0.08,),
                            Opacity(
                              opacity:  selectedIndex == 0 ? 1 : 0,
                              child: Container(
                                height: 3,
                                width: MediaQuery.of(context).size.width * 0.05,
                                color: secondColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          selectedIndex = 1;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.home_rounded, color: secondColor, size: MediaQuery.of(context).size.width * 0.08,),
                            Opacity(
                              opacity:  selectedIndex == 1 ? 1 : 0,
                              child: Container(
                                height: 3,
                                width: MediaQuery.of(context).size.width * 0.05,
                                color: secondColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          selectedIndex = 2;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.home_rounded, color: secondColor, size: MediaQuery.of(context).size.width * 0.08,),
                            Opacity(
                              opacity:  selectedIndex == 2 ? 1 : 0,
                              child: Container(
                                height: 3,
                                width: MediaQuery.of(context).size.width * 0.05,
                                color: secondColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          selectedIndex = 3;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.home_rounded, color: secondColor, size: MediaQuery.of(context).size.width * 0.08,),
                            Opacity(
                              opacity:  selectedIndex == 3 ? 1 : 0,
                              child: Container(
                                height: 3,
                                width: MediaQuery.of(context).size.width * 0.05,
                                color: secondColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          selectedIndex = 4;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.home_rounded, color: secondColor, size: MediaQuery.of(context).size.width * 0.08,),
                            Opacity(
                              opacity:  selectedIndex == 4 ? 1 : 0,
                              child: Container(
                                height: 3,
                                width: MediaQuery.of(context).size.width * 0.05,
                                color: secondColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}