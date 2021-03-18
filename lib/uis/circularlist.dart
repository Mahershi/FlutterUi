import 'package:circle_list/circle_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircularListD extends StatefulWidget{
  @override
  PageState createState() => PageState();
}

class PageState extends State<CircularListD>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  CircleList(
                    gradient: LinearGradient(
                      colors: [Colors.black54, Colors.white10]
                    ),
                    // innerCircleColor: Colors.red,
                    // outerCircleColor: Colors.blue,
                    origin: Offset(0, 0),
                    children: List.generate(10, (index){
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: index %2 == 0 ? Colors.red : Colors.blue
                        ),
                        height: 50,
                        width: 100,
                      );
                    }),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.65,
                color: Colors.pinkAccent,
              ),
            )
          ],
        ),
      ),
    );
  }
}