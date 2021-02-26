import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UiSix extends StatefulWidget{
  @override
  UiSixState createState() => UiSixState();
}

class UiSixState extends State<UiSix>{
  List<String> demolist = ["one", "two", "three", "four", "five"];
  @override
  void initState(){
    super.initState();
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   statusBarColor: Colors.white.withOpacity(0.4)
    // ));
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.blueAccent,
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                alignment: Alignment.bottomCenter,
                // decoration: BoxDecoration(border: Border.all(color: Colors.red), color: Colors.blue),
                // color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.account_circle, color: Colors.white, size: MediaQuery.of(context).size.width * 0.08,),
                    Icon(Icons.account_circle, color: Colors.white, size: MediaQuery.of(context).size.width * 0.08,),
                    Icon(Icons.account_circle, color: Colors.white, size: MediaQuery.of(context).size.width * 0.08,),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),  color: Colors.white,),
                height: MediaQuery.of(context).size.height * 0.88,
                width: MediaQuery.of(context).size.width,
                // padding: EdgeInsets.all(10),
                child: ListView(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            // decoration: BoxDecoration(border: Border.all(color: Colors.red)),
                            child: Icon(Icons.account_circle_rounded, size: MediaQuery.of(context).size.width/3.5,),
                          ),
                          Expanded(
                            child: Container(
                              // alignment: Alignment.center,
                              // decoration: BoxDecoration(border: Border.all(color: Colors.red)),
                              // padding: EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Container(
                                    // padding: EdgeInsets.all(10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Mahershi",
                                          style: TextStyle(
                                            fontSize: MediaQuery.of(context).size.width * 0.07,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                        SizedBox(width: 10,),
                                        Flexible(
                                          child: Text(
                                              "Bhavsar",
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: MediaQuery.of(context).size.width * 0.07,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ),
                                  SizedBox(height: 8,),
                                  Container(
                                    child: Text(
                                      "Developer",
                                      style: TextStyle(
                                        color: Colors.grey.withOpacity(0.9),
                                        fontSize: MediaQuery.of(context).size.width * 0.04,
                                        fontWeight: FontWeight.w300
                                      ),
                                    )
                                  )
                                ],
                              )
                            ),
                          )
                        ],
                      ),
                    ),
                    // SizedBox(
                    //   height: 1,
                    //   child: Container(
                    //     height: 1,
                    //     color: Colors.grey.withOpacity(0.6),
                    //   )
                    // ),
                    Container(
                      padding: EdgeInsets.all(30),
                      child: Text(
                        "Heading",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.055,
                          fontWeight: FontWeight.w300
                        ),
                      )
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                      child: CarouselSlider(
                        options: CarouselOptions(
                          initialPage: 0,
                          viewportFraction: 0.6,
                          height: 120
                        ),
                        items: demolist.map((e){
                          return Builder(
                            builder: (context){
                              return Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blueAccent.withOpacity(0.6),),
                                // height: 120,
                                width: MediaQuery.of(context).size.width * 0.5,
                                // color: Colors.blue.withOpacity(0.6),
                              );
                            },
                          );
                        }).toList(),
                      )
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                        child: CarouselSlider(
                          options: CarouselOptions(
                              initialPage: 0,
                              viewportFraction: 0.45,
                              height: 40,
                          ),
                          items: demolist.map((e){
                            return Builder(
                              builder: (context){
                                return Container(
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color(0xFF2B303D).withOpacity(0.9),),
                                  // height: 120,
                                  // width: MediaQuery.of(context).size.width * 0.2,
                                  child: Text(
                                    e.toString(),
                                    style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.width*0.05,
                                      color: Colors.white.withOpacity(0.9)
                                    ),
                                  ),
                                  // color: Colors.blue.withOpacity(0.6),
                                );
                              },
                            );
                          }).toList(),
                        )
                    ),
                  ],
                ),
              ),

            ],
          ),
        )
      )
    );
  }
}