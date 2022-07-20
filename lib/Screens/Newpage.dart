import 'package:bmi_calculator/Constants.dart';
import 'package:flutter/material.dart';
import '../components/reusable_card.dart';
import '../Constants.dart';
import 'package:bmi_calculator/components/Bottombutton.dart';
class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.interpretation,@required this.bmiReasult,@required this.finalText});
  final String bmiReasult;
  final String finalText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your Result",
                style: Tittletextstyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Reusablecard(
              color: activeColor,
              colorchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Text(finalText.toUpperCase(),style: resultText,),
                  Text(bmiReasult,style: BMIresult,),
                  Text(interpretation,textAlign: TextAlign.center,style: textBMI,),
                ],
              ),
            ),
          ),
          BottomButton(ontap: (){
            Navigator.pop(context);
          }, buttonTittle: 'RE-CALCULATE')
        ],
      ),
    );
  }


}
