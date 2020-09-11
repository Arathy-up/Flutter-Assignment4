import 'package:flutter/material.dart';
import 'package:flutter_app_assignment4/main.dart';
class OddEven extends StatefulWidget {
  @override
  _OddEvenState createState() => _OddEvenState();
}

class _OddEvenState extends State<OddEven> {
  String v="0";
  TextEditingController n1=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Odd/Even"),
        ),
        body: SizedBox.expand(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.white70,Colors.grey]),
            ),
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 5.0,),
                TextField(
                  style: TextStyle(color: Colors.indigo),
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
                      setState(() {
                        v="Even";
                      });
                    }
                  else{
                    setState(() {
                      v="Odd";
                    });
                  }
                },
                child: Text("Odd/Even"),),
                if(v=="Even")
                  Text(v,style: TextStyle(
                      color: Colors.lightGreen,
                      fontSize: 16.0),),
                if(v=="Odd")
                Text(v,style:TextStyle(
                  color: Colors.red,
                  fontSize: 16.0),),
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
