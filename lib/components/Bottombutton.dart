import 'package:flutter/material.dart';
import '../Constants.dart';
class BottomButton extends StatelessWidget {
  BottomButton({@required this.ontap,@required this.buttonTittle});
  final Function ontap;
  final String buttonTittle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: Center(
          child: Text(
            buttonTittle,
            style: largebutton,
          ),
        ),
        color: Colors.white24,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 15.0),
        width: double.infinity,
        height: bottomcontainer,
      ),
    );
  }
}