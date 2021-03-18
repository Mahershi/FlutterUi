import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui/colorconstants.dart';

class ColorsPage extends StatefulWidget{
  @override
  PageState createState() => PageState();
}

class PageState extends State<ColorsPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: ColorConstants.values.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10
            ),
            itemBuilder: (context, index){
              return Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: ColorConstants.colors[index],
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Text(
                  ColorConstants.values[index],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                    color: ColorConstants.values[index] == '0xFFFFFFFF' ? Colors.black : Colors.white,
                  ),
                )
              );
            },

          ),
      ),
    );
  }
}