import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UiEight extends StatefulWidget{
  @override
  PageState createState() => PageState();
}

class PageState extends State<UiEight>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/img/girl1.jpg',
                  ),
                  colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.3), BlendMode.hardLight),
                  fit: BoxFit.cover
                )
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.65,
              decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)), color: Colors.white),
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))),
                    child: Column(
                      children: [
                        Container(
                          // decoration: BoxDecoration(border: Border.all(color: Colors.red)),
                          margin: EdgeInsets.only(bottom: 10),
                          height: MediaQuery.of(context).size.height * 0.14/2,
                          child: Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.height * 0.14,
                              ),
                              Expanded(
                                child: Container(
                                  // decoration: BoxDecoration(border: Border.all(color: Colors.red)),
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(horizontal: 30),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Mahershi",
                                        style: TextStyle(
                                          fontSize: MediaQuery.of(context).size.width * 0.045
                                        ),
                                      ),
                                      SizedBox(width: 5,),
                                      Text(
                                          "Bhavsar",
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context).size.width * 0.045
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: ListView(
                            children: [
                             
                            ],
                          )
                        )
                      ],
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(-(MediaQuery.of(context).size.height * 0.14), -(MediaQuery.of(context).size.height * 0.14)/2),
                    // offset: Offset(0, 0),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                              // border: Border.all(color: Colors.red),
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/img/girl1.jpg',
                              ),
                            )
                          ),
                          height: MediaQuery.of(context).size.height * 0.14,
                        ),
                        Transform.translate(
                          offset: Offset(MediaQuery.of(context).size.height * 0.05, MediaQuery.of(context).size.height * 0.05),
                          child: InkWell(
                            onTap: (){
                              print("pressed");
                            },
                            child: Container(
                              padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  color: Colors.black,
                                  border: Border.all(color: Colors.white, width: 2)
                                ),
                                height: MediaQuery.of(context).size.height * 0.14,
                              child: Icon(Icons.edit, color: Colors.white, size: 12,)
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                ],
              ),
            )
          ],
        )
      ),
    );
  }
}