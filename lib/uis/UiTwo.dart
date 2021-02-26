import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UiTwo extends StatefulWidget{
  @override
  UiTwoState createState() => UiTwoState();
}

class UiTwoState extends State<UiTwo> with SingleTickerProviderStateMixin{
  static double maxSlide = 225.0;
  AnimationController animationController;
  double minDragStart = 120;
  double maxDragStart = maxSlide + 60;
  bool canBeDragged = false;

  @override
  void initState(){
    super.initState();
    animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 200));
  }

  void toggleDrawer(){
    animationController.isDismissed ? animationController.forward() : animationController.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onHorizontalDragStart: onDragStart,
          onHorizontalDragUpdate: onDragUpdate,
          onHorizontalDragEnd: onDragEnd,
          child: AnimatedBuilder(
            animation: animationController,
            builder: (context, _){
              double slide = maxSlide * animationController.value;
              double scale = 1 - animationController.value * 0.2;
              return Stack(
                children: [
                  Container(
                    // padding: EdgeInsets.all(20),
                    // height: MediaQuery.of(context).size.height,
                    // color: Colors.red,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(30),
                          color: Colors.blue.withOpacity(0.8),
                          child: Row(
                            children: [
                              // Icon(Icons.account_circle, size: 78,),
                              Container(
                                child: Text(
                                  "Mahershi Bhavsar",
                                  style: TextStyle(
                                    fontSize: 28
                                  )
                                )
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey.withOpacity(0.6)))),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.settings, size: 32,),
                              Container(
                                padding: EdgeInsets.only(left: 10),
                                // alignment: Alignment.centerRight,
                                child: Text(
                                  "Settings",
                                  style: TextStyle(
                                    fontSize: 18
                                  ),
                                )
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey.withOpacity(0.6)))),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.settings, size: 32,),
                              Container(
                                  padding: EdgeInsets.only(left: 10),
                                  // alignment: Alignment.centerRight,
                                  child: Text(
                                    "Settings",
                                    style: TextStyle(
                                        fontSize: 18
                                    ),
                                  )
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey.withOpacity(0.6)))),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.settings, size: 32,),
                              Container(
                                  padding: EdgeInsets.only(left: 10),
                                  // alignment: Alignment.centerRight,
                                  child: Text(
                                    "Settings",
                                    style: TextStyle(
                                        fontSize: 18
                                    ),
                                  )
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Transform(
                    transform: Matrix4.identity()..translate(slide)..scale(scale),
                    alignment: Alignment.centerLeft,
                    child: Container(
                      color: Colors.yellow,
                      child: ListView(
                        children: [
                          Container(
                            margin: EdgeInsets.all(20),
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: toggleDrawer,
                                  child: Container(
                                    child: Icon(Icons.menu, size: 32,),
                                  ),
                                )
                              ],
                            ),
                          ),
                          // Container(
                          //   height: 100,
                          //   decoration: BoxDecoration(border: Border.all(color: Colors.red)),
                          // ),
                          // Container(
                          //   height: 100,
                          //   decoration: BoxDecoration(border: Border.all(color: Colors.red)),
                          // ),
                          // Container(
                          //   height: 100,
                          //   decoration: BoxDecoration(border: Border.all(color: Colors.red)),
                          // ),
                          // Container(
                          //   height: 100,
                          //   decoration: BoxDecoration(border: Border.all(color: Colors.red)),
                          // ),
                          // Container(
                          //   height: 100,
                          //   decoration: BoxDecoration(border: Border.all(color: Colors.red)),
                          // ),
                          // Container(
                          //   height: 100,
                          //   decoration: BoxDecoration(border: Border.all(color: Colors.red)),
                          // ),
                          // Container(
                          //   height: 100,
                          //   decoration: BoxDecoration(border: Border.all(color: Colors.red)),
                          // ),
                          // Container(
                          //   height: 100,
                          //   decoration: BoxDecoration(border: Border.all(color: Colors.red)),
                          // ),
                        ],
                      )
                    ),
                  )

                ],
              );
            },
          ),
        ),
      )
    );
  }

  void onDragStart(DragStartDetails details){
    // print(details.globalPosition.dx.toString());
    bool isDragOpenFromLeft = animationController.isDismissed && details.globalPosition.dx < minDragStart;
    bool isDragOpenFromRight = animationController.isCompleted && details.globalPosition.dx < maxDragStart;

    print(isDragOpenFromLeft);
    print(isDragOpenFromRight);
    canBeDragged = isDragOpenFromRight || isDragOpenFromLeft;
    print(canBeDragged);
  }
  void onDragUpdate(DragUpdateDetails details){
    if(canBeDragged){
      // print("Primary Delta:" + details.primaryDelta.toString());
      double data = details.primaryDelta / maxSlide;
      // print("Data:" + data.toString());
      animationController.value += data;
      // print(animationController.value.toString());
    }
  }

  void close() => animationController.reverse();

  void open() => animationController.forward();

  void onDragEnd(DragEndDetails details){
    print(animationController.value.toString());
    if(animationController.isDismissed || animationController.isCompleted)
      return;

    if(details.velocity.pixelsPerSecond.dx.abs() >= 365){
      double visualVelocity = details.velocity.pixelsPerSecond.dx / MediaQuery.of(context).size.width;
      animationController.fling(velocity: visualVelocity);
    }else if (animationController.value < 0.5){
      close();
    }else{
      open();
    }
  }


}