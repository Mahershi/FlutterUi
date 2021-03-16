import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'dart:math' as math;

class CustomClipperPage extends StatefulWidget{
  @override
  PageState createState() => PageState();
 }

 class PageState extends State<CustomClipperPage>{
  @override
   Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 300,
                  decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(40), topLeft: Radius.circular(40)), color: Colors.redAccent,),
              ),
              Row(
                children: [
                  Expanded(
                    child: Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationY(math.pi),
                      child: Container(
                        height: 170,
                        child: ClipPath(
                          // clipBehavior: Clip.hardEdge,
                            clipper: SideCutClipper(),
                            child: Container(
                              color: Colors.redAccent,
                            )
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 170,
                      child: ClipPath(
                        // clipBehavior: Clip.hardEdge,
                          clipper: SideCutClipper(),
                          child: Container(
                            color: Colors.redAccent,
                          )
                      ),
                    ),
                  ),
                ],
              ),


              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(40), bottomLeft: Radius.circular(40)), color: Colors.redAccent,),

                height: 100,
              )
            ],
          ),
        )
      )
    );
  }
 }