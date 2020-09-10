import 'package:flutter/material.dart';
import 'package:flutter_app_assignment4/Greater.dart';
import 'package:flutter_app_assignment4/OddEven.dart';
import 'package:flutter_app_assignment4/Smaller.dart';
class Design extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          SizedBox(height: 5.0,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Greater()));
              },
            child: Container(
              height: 60.0,
              width: 500.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.purpleAccent,Colors.lightGreenAccent]),
                borderRadius: BorderRadius.circular(50.0)
              ),
              child: Center(child: Text("Greater")),
            ),
          ),
      SizedBox(height: 5.0,),
      GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Smaller()));
        },
        child: Container(
          height: 60.0,
          width: 500.0,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.purpleAccent,Colors.lightGreenAccent]),
              borderRadius: BorderRadius.circular(50.0)
          ),
          child: Center(child: Text("Smaller")),
        ),
      ),
      SizedBox(height: 5.0,),
      GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>OddEven()));
        },
        child: Container(
          height: 60.0,
          width: 500.0,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.purpleAccent,Colors.lightGreenAccent]),
              borderRadius: BorderRadius.circular(50.0)
          ),
          child: Center(child: Text("Odd/Even")),
        ),
      ),
        ],

      ),
    );
  }
}
