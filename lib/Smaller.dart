import 'package:flutter/material.dart';
import 'package:flutter_app_assignment4/main.dart';
class Smaller extends StatefulWidget {
  @override
  _SmallerState createState() => _SmallerState();
}

class _SmallerState extends State<Smaller> {
  String ans="0";
  TextEditingController s1=TextEditingController();
  TextEditingController s2=TextEditingController();
  TextEditingController s3=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Smaller Number"),
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
                  controller: s1,
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
                  controller: s2,
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
                  controller: s3,
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
                  var x=int.parse(s1.text);
                  var y=int.parse(s2.text);
                  var z=int.parse(s3.text);
                  var l=0;
                  if(x<y)
                  {
                    l=x;
                  }
                  else
                  {
                    l=y;
                  }
                  if(l<z)
                  {
                    setState(() {
                      ans=l.toString();
                    });
                  }
                  else{
                    setState(() {
                      ans=l.toString();
                    });
                  }

                },
                    child: Text("Smaller")),
                Text(ans,style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.deepPurple
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

