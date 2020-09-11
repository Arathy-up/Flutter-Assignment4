import 'package:flutter/material.dart';
import 'package:flutter_app_assignment4/main.dart';
class Greater extends StatefulWidget {
  @override
  _GreaterState createState() => _GreaterState();
}

class _GreaterState extends State<Greater> {
  String result="0";
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
        body: SizedBox.expand(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.white70,Colors.grey]),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: 5.0,),
                TextField(
                  style: TextStyle(color: Colors.indigo),
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
                  style: TextStyle(color: Colors.indigo),
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
                  style: TextStyle(color: Colors.indigo),
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
                        setState(() {
                          result=z.toString();
                        });
                      }
                    else{
                      setState(() {
                        result=l.toString();
                      });

                    }

                  },
                  child: Text("Greater")),
                Text(result,style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.indigo
                ),),
                SizedBox(height: 10.0,),
                RaisedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NumberApp()));
                },
                child: Text("Back To MainPage"),),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
