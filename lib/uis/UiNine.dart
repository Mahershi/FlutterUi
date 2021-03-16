import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UiNine extends StatefulWidget{
  @override
  PState createState() => PState();
}

class PState extends State<UiNine>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 20),
        color: Colors.lightBlueAccent.withOpacity(0.3),
        child: Column(
          children: [
           Stack(
             alignment: Alignment.bottomCenter,
             children: [
               Container(
                 width: MediaQuery.of(context).size.width,
                 height: 100,
                 color: Colors.white,
               ),
               Container(
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.blueAccent,),
                 height: MediaQuery.of(context).size.height * 0.37,
                 // child: CustomPaint(
                 //   painter: MyPainter(),
                 //   child: Container(),
                 // ),
                 child: Stack(
                   children: [
                     Column(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Row(
                           children: [
                             ClipRRect(
                               borderRadius: BorderRadius.only(topLeft: Radius.circular(30),),
                               child: Container(
                                 // color: Colors.lightBlueAccent,
                                 decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(0), bottomRight: Radius.circular(300)), color: Colors.lightBlueAccent),
                                 height: MediaQuery.of(context).size.width*0.4,
                                 width: MediaQuery.of(context).size.width*0.4,
                               ),
                             )
                           ],
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                           children: [
                             ClipRRect(
                               borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),),
                               child: Container(
                                 // color: Colors.lightBlueAccent,
                                 decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(0), topLeft: Radius.circular(300)), color: Colors.lightBlueAccent),
                                 height: MediaQuery.of(context).size.width*0.2,
                                 width: MediaQuery.of(context).size.width*0.2,
                               ),
                             )
                           ],
                         )
                       ],
                     ),
                     Container(
                       padding: EdgeInsets.all(20),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Container(
                             margin: EdgeInsets.symmetric(vertical: 20),
                             // decoration: BoxDecoration(border: Border.all(color: Colors.red)),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Container(
                                       margin: EdgeInsets.all(5),
                                       child: Text(
                                         "Sun, Feb 20 2021",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: MediaQuery.of(context).size.width * 0.04,
                                            letterSpacing: 1.2
                                          ),
                                       ),
                                     ),
                                     Container(
                                       margin: EdgeInsets.all(5),
                                       child: Text(
                                           "Mahershi Bhavsar",
                                         style: TextStyle(
                                             color: Colors.white,
                                             fontSize: MediaQuery.of(context).size.width * 0.06,
                                            fontWeight: FontWeight.w500
                                         ),
                                       ),
                                     )
                                   ],
                                 ),
                                 Container(
                                   height: MediaQuery.of(context).size.width * 0.1,
                                   width: MediaQuery.of(context).size.width * 0.1,
                                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white,),
                                   child: Icon(Icons.account_circle_outlined, color: Colors.lightBlueAccent, size: MediaQuery.of(context).size.width * 0.07,)
                                 )
                               ],
                             ),
                           ),
                           Expanded(
                             child: Container(
                               width: MediaQuery.of(context).size.width * 0.8,
                               decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                 children: [
                                   Column(
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     children: [
                                       Container(
                                         // margin: EdgeInsets.only(bottom: 10),
                                         height: MediaQuery.of(context).size.width * 0.12,
                                         width: MediaQuery.of(context).size.width * 0.12,
                                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.lightBlueAccent,),
                                         child: Icon(Icons.alarm, color: Colors.white, size: MediaQuery.of(context).size.width * 0.08,)
                                       ),
                                       SizedBox(height: MediaQuery.of(context).size.width * 0.02,),
                                       Container(
                                           // margin: EdgeInsets.only(bottom: 8),
                                         child: Text(
                                           "245",
                                           style: TextStyle(
                                             fontSize: MediaQuery.of(context).size.width * 0.04,
                                             fontWeight: FontWeight.w500
                                           )
                                         )
                                       ),
                                       SizedBox(height: MediaQuery.of(context).size.width * 0.01,),
                                       Container(
                                         child: Text(
                                           "Calories",
                                             style: TextStyle(
                                                 fontSize: MediaQuery.of(context).size.width * 0.03,
                                                 fontWeight: FontWeight.w500,
                                               color: Colors.grey.withOpacity(0.7)
                                             )
                                         )
                                       )
                                     ],
                                   ),
                                   Column(
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     children: [
                                       Container(
                                         // margin: EdgeInsets.only(bottom: 10),
                                           height: MediaQuery.of(context).size.width * 0.12,
                                           width: MediaQuery.of(context).size.width * 0.12,
                                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.lightBlueAccent,),
                                           child: Icon(Icons.alarm, color: Colors.white, size: MediaQuery.of(context).size.width * 0.08,)
                                       ),
                                       SizedBox(height: MediaQuery.of(context).size.width * 0.02,),
                                       Container(
                                         // margin: EdgeInsets.only(bottom: 8),
                                           child: Text(
                                               "245",
                                               style: TextStyle(
                                                   fontSize: MediaQuery.of(context).size.width * 0.04,
                                                   fontWeight: FontWeight.w500
                                               )
                                           )
                                       ),
                                       SizedBox(height: MediaQuery.of(context).size.width * 0.01,),
                                       Container(
                                           child: Text(
                                               "Calories",
                                               style: TextStyle(
                                                   fontSize: MediaQuery.of(context).size.width * 0.03,
                                                   fontWeight: FontWeight.w500,
                                                   color: Colors.grey.withOpacity(0.7)
                                               )
                                           )
                                       )
                                     ],
                                   ),
                                   Column(
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     children: [
                                       Container(
                                         margin: EdgeInsets.only(top: 5),
                                           height: MediaQuery.of(context).size.width * 0.12,
                                           width: MediaQuery.of(context).size.width * 0.12,
                                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.lightBlueAccent,),
                                           child: Icon(Icons.alarm, color: Colors.white, size: MediaQuery.of(context).size.width * 0.08,)
                                       ),
                                       SizedBox(height: MediaQuery.of(context).size.width * 0.02,),
                                       Container(
                                         // margin: EdgeInsets.only(bottom: 8),
                                           child: Text(
                                               "245",
                                               style: TextStyle(
                                                   fontSize: MediaQuery.of(context).size.width * 0.04,
                                                   fontWeight: FontWeight.w500
                                               )
                                           )
                                       ),
                                       SizedBox(height: MediaQuery.of(context).size.width * 0.01,),
                                       Container(
                                         margin: EdgeInsets.only(bottom: 5),
                                           child: Text(
                                               "Calories",
                                               style: TextStyle(
                                                   fontSize: MediaQuery.of(context).size.width * 0.03,
                                                   fontWeight: FontWeight.w500,
                                                   color: Colors.grey.withOpacity(0.7)
                                               )
                                           )
                                       )
                                     ],
                                   ),

                                 ],
                               ),
                             ),
                           )
                         ],
                       ),

                     )
                   ],
                 ),
               ),

             ],
           ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(30), bottomLeft: Radius.circular(30)), color: Colors.white),
              ),
            )
          ],
        ),

      ),
    );
  }
}

class MyPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    print(size.toString());
    final paint = Paint()
      ..color = Colors.lightBlueAccent
      ..style = PaintingStyle.fill;

    final p = Path();
    p.moveTo(0, 0);
    p.arcToPoint(Offset(0, size.width*0.2), radius: Radius.circular(50),);
    canvas.drawPath(p, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}