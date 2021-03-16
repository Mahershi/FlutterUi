import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui/uis/CustomClipperPage.dart';
import 'package:ui/uis/UiEight.dart';
import 'package:ui/uis/UiFive.dart';
import 'package:ui/uis/UiFour.dart';
import 'package:ui/uis/UiNine.dart';
import 'package:ui/uis/UiOne.dart';
import 'package:ui/uis/UiSix.dart';
import 'package:ui/uis/UiThree.dart';
import 'package:ui/uis/UiTwo.dart';
import 'package:ui/uis/buybutton.dart';
import 'package:ui/uis/coffee.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF1D1C1C),
        body: Container(
          padding: EdgeInsets.all(20),
          child: GridView.count(
            crossAxisCount: 3,
            children: [
              Container(
                  margin: EdgeInsets.all(20),
                  child: OutlineButton(
                    borderSide: BorderSide(color: Colors.white),
                    child: Text("UI 1 Shoes", style: TextStyle(color: Colors.white)),
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (_) => UIOne()));
                    },
                  )
              ),
              Container(
                  margin: EdgeInsets.all(20),
                  child: OutlineButton(
                    borderSide: BorderSide(color: Colors.white),
                    child: Text("UI 2 Drawer", style: TextStyle(color: Colors.white)),
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (_) => UiTwo()));
                    },
                  )
              ),
              // Container(
              //     margin: EdgeInsets.all(20),
              //     child: OutlineButton(
              //       borderSide: BorderSide(color: Colors.white),
              //       child: Text("UI 3 Curves", style: TextStyle(color: Colors.white)),
              //       onPressed: (){
              //         Navigator.of(context).push(MaterialPageRoute(builder: (_) => UiThree()));
              //       },
              //     )
              // ),
              Container(
                  margin: EdgeInsets.all(20),
                  child: OutlineButton(
                    borderSide: BorderSide(color: Colors.white),
                    child: Text("UI 3 Custom Paint", style: TextStyle(color: Colors.white)),
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (_) => UiFour()));
                    },
                  )
              ),
              Container(
                  margin: EdgeInsets.all(20),
                  child: OutlineButton(
                    borderSide: BorderSide(color: Colors.white),
                    child: Text("UI 5", style: TextStyle(color: Colors.white)),
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (_) => UiFive()));
                    },
                  )
              ),
              Container(
                  margin: EdgeInsets.all(20),
                  child: OutlineButton(
                    borderSide: BorderSide(color: Colors.white),
                    child: Text("UI 6", style: TextStyle(color: Colors.white)),
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (_) => UiSix()));
                    },
                  )
              ),
              Container(
                  margin: EdgeInsets.all(20),
                  child: OutlineButton(
                    borderSide: BorderSide(color: Colors.white),
                    child: Text("UI 7 Custom Clippers", style: TextStyle(color: Colors.white)),
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (_) => CustomClipperPage()));
                    },
                  )
              ),
              Container(
                  margin: EdgeInsets.all(20),
                  child: OutlineButton(
                    borderSide: BorderSide(color: Colors.white),
                    child: Text("UI 8 Profile Page", style: TextStyle(color: Colors.white)),
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (_) => UiEight()));
                    },
                  )
              ),
              Container(
                  margin: EdgeInsets.all(20),
                  child: OutlineButton(
                    borderSide: BorderSide(color: Colors.white),
                    child: Text("UI 9 Activity", style: TextStyle(color: Colors.white)),
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (_) => UiNine()));
                    },
                  )
              ),
              Container(
                  margin: EdgeInsets.all(20),
                  child: OutlineButton(
                    borderSide: BorderSide(color: Colors.white),
                    child: Text("UI 9 Coffee", style: TextStyle(color: Colors.white)),
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (_) => Coffee()));
                    },
                  )
              ),

              //Bezier Curve
              Container(
                  margin: EdgeInsets.all(20),
                  child: OutlineButton(
                    borderSide: BorderSide(color: Colors.white),
                    child: Text("UI 10 Buy Button", style: TextStyle(color: Colors.white)),
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (_) => BuyButton()));
                    },
                  )
              )
            ],
          )
        ),
      ),
    );
  }
}