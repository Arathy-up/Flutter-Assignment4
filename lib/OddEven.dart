import 'package:flutter/material.dart';
import 'package:flutter_app_assignment4/main.dart';
class OddEven extends StatefulWidget {
  @override
  _OddEvenState createState() => _OddEvenState();
}

class _OddEvenState extends State<OddEven> {
  TextEditingController n1=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Odd/Even"),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 5.0,),
              TextField(
                controller: n1,
                decoration: InputDecoration(
                    hintText: "Enter the number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40.0)
                    ),
                    prefixIcon: Icon(Icons.filter)
                ),
              ),
              SizedBox(height: 10.0,),
              RaisedButton(onPressed: (){
                var x=int.parse(n1.text);
                if(x%2==0)
                  {
                    print("Even");
                  }
                else{
                  print("Odd");
                }
              },
              child: Text("Odd/Even"),),
              SizedBox(height: 10.0,),
              RaisedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>NumberApp()));
              },
                child: Text("Back To MainPage"),),

            ],
          ),
        ),
      ),
    );
  }
}
