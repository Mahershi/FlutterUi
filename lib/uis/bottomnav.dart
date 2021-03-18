import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class BottomNav extends StatefulWidget{
  @override
  PageState createState() => PageState();
}

class PageState extends State<BottomNav> with TickerProviderStateMixin{
  static Color mainColor = Color(0xFF992CFF);
  int selectedIndex = 0;

  AnimationController animationController;
  AnimationController animationController2;
  AnimationController animationController3;
  AnimationController animationController4;
  AnimationController animationController5;
  AnimationController prev;

  @override
  void initState(){
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500)
    );
    animationController2 = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 500)
    );
    animationController3 = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 500)
    );
    animationController4 = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 500)
    );
    animationController5 = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 500)
    );
    prev = animationController;
  }

  @override
  void dispose(){
    super.dispose();
    animationController.dispose();
    animationController2.dispose();
    animationController3.dispose();
    animationController4.dispose();
    animationController5.dispose();

    animationController.addListener(() {
      print(animationController.isDismissed);
      print(animationController.isCompleted);
      print(animationController.isAnimating);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              // height: MediaQuery.of(context).size.height * 0.92,
              height: MediaQuery.of(context).size.height,
              color: mainColor,

            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                // margin: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height * 0.08,

                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height * 0.04),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: (){
                        prev.reverse();
                        prev = animationController;
                        selectedIndex = 0;
                        animationController.value == 0 ?
                        animationController.animateTo(0.5) : animationController.reverse();

                        setState(() {

                        });
                      },
                      child: Container(
                        // padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          // border: Border.all(color: Colors.red)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 5,
                              width: 10,
                              // color: mainColor,
                            ),
                            Lottie.asset(
                                'assets/lottie/homeicon.json',
                                width: MediaQuery.of(context).size.width*0.1,
                                controller: animationController,
                            ),
                            Container(
                              height: 5,
                              width: 10,
                              color: selectedIndex == 0 ? mainColor : Colors.transparent,
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        prev.reverse();
                        prev = animationController2;
                        selectedIndex = 1;
                        animationController2.value == 0 ?
                        animationController2.animateTo(0.5) : animationController2.reverse();
                        setState(() {

                        });
                      },
                      child: Container(
                        // padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          // border: Border.all(color: Colors.red)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 5,
                              width: 10,
                              // color: mainColor,
                            ),
                            Lottie.asset(
                              'assets/lottie/homeicon.json',
                              width: MediaQuery.of(context).size.width*0.1,
                              controller: animationController2,
                            ),
                            Container(
                              height: 5,
                              width: 10,
                              color: selectedIndex == 1 ? mainColor : Colors.transparent,
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        prev.reverse();
                        prev = animationController3;
                        selectedIndex = 2;
                        animationController3.value == 0 ?
                        animationController3.animateTo(0.5) : animationController3.reverse();
                        setState(() {

                        });
                      },
                      child: Container(
                        // padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          // border: Border.all(color: Colors.red)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 5,
                              width: 10,
                              // color: mainColor,
                            ),
                            Lottie.asset(
                              'assets/lottie/homeicon.json',
                              width: MediaQuery.of(context).size.width*0.1,
                              controller: animationController3,
                            ),
                            Container(
                              height: 5,
                              width: 10,
                              color: selectedIndex == 2 ? mainColor : Colors.transparent,
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        prev.reverse();
                        prev = animationController4;
                        selectedIndex = 3;
                        animationController4.value == 0 ?
                        animationController4.animateTo(0.5) : animationController4.reverse();
                        setState(() {

                        });
                      },
                      child: Container(
                        // padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          // border: Border.all(color: Colors.red)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 5,
                              width: 10,
                              // color: mainColor,
                            ),
                            Lottie.asset(
                              'assets/lottie/homeicon.json',
                              width: MediaQuery.of(context).size.width*0.1,
                              controller: animationController4,
                            ),
                            Container(
                              height: 5,
                              width: 10,
                              color: selectedIndex == 3 ? mainColor : Colors.transparent,
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        prev.reverse();
                        prev = animationController5;
                        selectedIndex = 4;
                        animationController5.value == 0 ?
                        animationController5.animateTo(0.5) : animationController5.reverse();
                        setState(() {

                        });
                      },
                      child: Container(
                        // padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          // border: Border.all(color: Colors.red)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 5,
                              width: 10,
                              // color: mainColor,
                            ),
                            Lottie.asset(
                              'assets/lottie/homeicon.json',
                              width: MediaQuery.of(context).size.width*0.1,
                              controller: animationController5,
                            ),
                            Container(
                              height: 5,
                              width: 10,
                              color: selectedIndex == 4 ? mainColor : Colors.transparent,
                            )
                          ],
                        ),
                      ),
                    ),


                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}