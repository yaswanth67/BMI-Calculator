import 'dart:math';
class Calculatorfomula{
  Calculatorfomula({this.height,this.weight});

  final int height;
  final int weight;
  double _bmi;

  String calculateBMI(){
   _bmi=weight/pow(height/100,2);
  return _bmi.toStringAsFixed(1);

  }
  String getResult(){
    if(_bmi>=25){
      return 'Overweight';
    }
    else if(_bmi>18.5){
      return'Normal';
    }else{
      return 'Underweight';
    }
  }
  String getInterpretation(){
    if(_bmi>=25){
      return 'You have a higher than normal body weight. Try to exercise more and more!';
    }
    else if(_bmi>18.5){
      return'Great, You have a normal body weight.';
    }else{
      return 'You have a lower than normal body weight. You have to quite the diet or change the diet';
    }
  }
}