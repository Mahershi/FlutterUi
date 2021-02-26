import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UIOne extends StatefulWidget{
  @override
  UIOneState createState() => UIOneState();
}

class UIOneState extends State<UIOne>{
  String cur = '9';
  List<String> imgLoc = ['assets/img/two.jpg', 'assets/img/two.jpg', 'assets/img/two.jpg'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF0D0D0D),
        body: Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/img/shoe.jpg'), fit: BoxFit.fill)),
          // padding: EdgeInsets.all(20),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              child: Icon(Icons.chevron_left, color: Colors.white,),
                            ),
                          ),
                          Container(
                              child: Icon(Icons.more_vert, color: Colors.white)
                          )
                        ],
                      )
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    // margin: EdgeInsets.all(20),
                    // margin: EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        Text(
                          'Jordan',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                        Text(
                          ' "Why Not?"',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w300
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      // margin: EdgeInsets.only(top: 10),
                      child: Text(
                        "Zer0.4",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 26
                        ),
                      )
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      // margin: EdgeInsets.only(top: 10),
                      child: Text(
                        "\$ 139.0",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16
                        ),
                      )
                  ),
                  SizedBox(height: 20,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    // margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Container(

                            child: Text(
                              "Size: ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18
                              ),
                            )
                        ),
                        Container(
                          // color: Colors.white,
                          child: Theme(
                            data: ThemeData(
                              canvasColor: Colors.black,
                            ),
                            child: DropdownButton(
                              style: TextStyle(color: Colors.white),
                              underline: Container(),
                              icon: Icon(Icons.keyboard_arrow_down, color: Colors.grey,),
                              value: cur,
                              onChanged: (value){
                                setState(() {
                                  cur = value;
                                });
                              },
                              items: ['8', '9', '10'].map((e){
                                return DropdownMenuItem(
                                  child: Container(
                                    // color: Colors.black,
                                    child: Text(e,),
                                  ) ,
                                  value: e,
                                );
                              }).toList(),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    // margin: EdgeInsets.symmetric(horizontal: 20),
                      padding: EdgeInsets.all(20),
                      color: Colors.black.withOpacity(0.7),
                      child: Text(
                        'The radiance lives on in the Nike Air Force 1 \'07 LX, the b-ball icon that puts a playful twist on what you know best: stitched overlays, bold colours and the perfect amount of flash to make you shine. Several cheerful details nod to the ubiquitous shopping bags of NYC bodegas, making sure you "have a nice day".',
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 1.2,
                            height: 1.6
                        ),
                      )
                  ),
                ],
              ),
              CarouselSlider(
                  options: CarouselOptions(
                      initialPage: 0,
                      viewportFraction: 0.45,
                      height: 150
                    // aspectRatio: 1.0
                  ),
                  items: imgLoc.map((e){
                    return Builder(
                      builder: (context){
                        return InkWell(
                          child: Container(
                            // width: MediaQuery.of(context).size.width/2.5,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(e,),
                            ),
                          ),
                          onLongPress: (){
                            // Scaffold.of(context).showSnackBar(
                            //   SnackBar(
                            //     content: ClipRRect(
                            //       borderRadius: BorderRadius.circular(20),
                            //       child: Image.asset(e)
                            //     ),
                            //     behavior: SnackBarBehavior.floating,
                            //     backgroundColor: Colors.transparent,
                            //   )
                            // );
                            showDialog(
                              context: context,
                              builder: (context){
                                return AlertDialog(
                                  content: Container(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(e),
                                    ),
                                  ),
                                  titlePadding: EdgeInsets.zero,
                                  insetPadding: EdgeInsets.all(20),
                                );
                              }
                            );
                          },
                        );
                      },
                    );
                  }).toList()
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    // alignment: Alignment.center,
                    margin: EdgeInsets.all(20),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 1.6), borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        "Add To Card",
                        style: TextStyle(
                            color: Colors.white
                        ),
                      )
                  ),
                ],
              ),
              

            ],
          ),
        ),
      ),
    );
  }
}