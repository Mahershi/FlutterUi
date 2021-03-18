import 'package:circle_list/circle_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Rotate extends StatefulWidget{
  @override
  PageState createState() => PageState();
}

class PageState extends State<Rotate>
{
  double x = 3.14/180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Transform(
          transform: Matrix4.identity()..rotateX(50 * x)..rotateY(30 * x),
          alignment: FractionalOffset.center,
          child: Material(
            elevation: 10,
            child: Container(
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width/2,
              // color: Colors.redAccent,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                image: DecorationImage(
                  image: AssetImage(
                    "assets/img/girl1.jpg",
                  ),
                  fit: BoxFit.cover
                )
              ),
            ),
          ),
        ),
      ),
    );
  }
}