import 'package:flutter/material.dart';
class Reusablecard extends StatelessWidget {
  Reusablecard({@required this.color, this.colorchild,this.onPress});
  final Color color;
  final Widget colorchild;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: colorchild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          color: color,
        ),
      ),
    );
  }
}
