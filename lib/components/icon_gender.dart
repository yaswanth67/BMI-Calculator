import 'package:flutter/material.dart';

const textsize = TextStyle(fontSize: 18.0, color: Colors.white);

class Newcolum extends StatelessWidget {
  Newcolum({this.icon, this.gender});

  final IconData icon;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 90.0,
        ),
        SizedBox(
          height: 20,
        ),
        Text(gender, style: textsize)
      ],
    );
  }
}
