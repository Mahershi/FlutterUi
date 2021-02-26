import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UiThree extends StatefulWidget{
  @override
  UiThreeState createState() => UiThreeState();
}

class UiThreeState extends State<UiThree>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/img/bg1.jpg'),
              fit: BoxFit.cover
            )
          ),
          child: Column(
            children: [
              Card(
                elevation: 18,
                shadowColor: Colors.grey,
                child: Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  // decoration: BoxDecoration(border: Border.all(color: Colors.red)),
                  child: Column(
                    children: [
                      Container(
                        color: Colors.red,
                        height: 100,
                        width: 100,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}