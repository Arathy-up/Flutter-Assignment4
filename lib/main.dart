import 'package:flutter/material.dart';
import 'package:flutter_app_assignment4/Design.dart';

void main()
{
  runApp(NumberApp());
}
class NumberApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Number"),
        ),
        body: Design()
      ),
    );
  }
}
