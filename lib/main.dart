import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Screens/input_page.dart';


void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
            primaryColor: Color(0XFF353B42),
            scaffoldBackgroundColor: Colors.black,
            accentColor:Colors.black,
           // textTheme: TextTheme(body1: TextStyle(color: Color(0XFFFFFFFF)))
      ),
      home: InputPage(),
    );
  }
}



