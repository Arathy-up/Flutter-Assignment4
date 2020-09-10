import 'package:flutter/material.dart';
import 'package:flutter_app_assignment4/main.dart';
class Greater extends StatefulWidget {
  @override
  _GreaterState createState() => _GreaterState();
}

class _GreaterState extends State<Greater> {
  TextEditingController n1=TextEditingController();
  TextEditingController n2=TextEditingController();
  TextEditingController n3=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Greater Number"),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              SizedBox(height: 5.0,),
              TextField(
                controller: n1,
                decoration: InputDecoration(
                  hintText: "Enter first number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0)
                  ),
                  prefixIcon: Icon(Icons.filter_1)
                ),
              ),
              SizedBox(height: 5.0,),
              TextField(
                controller: n2,
                decoration: InputDecoration(
                    hintText: "Enter Second number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40.0)
                    ),
                    prefixIcon: Icon(Icons.filter_2)
                ),
              ),
              SizedBox(height: 5.0,),
              TextField(
                controller: n3,
                decoration: InputDecoration(
                    hintText: "Enter Third number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40.0)
                    ),
                    prefixIcon: Icon(Icons.filter_3)
                ),
              ),
              SizedBox(height: 5.0,),
              RaisedButton(onPressed: (){
                  var x=int.parse(n1.text);
                  var y=int.parse(n2.text);
                  var z=int.parse(n3.text);
                  var l=0;
                  if(x<y)
                    {
                      l=y;
                    }
                  else
                    {
                    l=x;
                  }
                  if(l<z)
                    {
                      print(z);
                    }
                  else{
                    print(l);
                  }

                },
                child: Text("Greater")),
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
