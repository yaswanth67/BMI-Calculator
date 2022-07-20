import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/icon_gender.dart';
import '../components/reusable_card.dart';
import '../Constants.dart';
import 'Newpage.dart';
import '../components/Bottombutton.dart';
import '../components/round_icon.dart';
import 'package:bmi_calculator/Calculator_formulas.dart';

enum gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  gender genderselected;
  int height = 180;
  int weight = 50;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Row(children: [
            Expanded(
              child: Reusablecard(
                onPress: () {
                  setState(() {
                    genderselected = gender.male;
                  });
                },
                color:
                    genderselected == gender.male ? activeColor : InactiveColor,
                colorchild: Newcolum(
                  icon: FontAwesomeIcons.mars,
                  gender: 'Male',
                ),
              ),
            ),
            Expanded(
              child: Reusablecard(
                onPress: () {
                  setState(() {
                    genderselected = gender.female;
                  });
                },
                color: genderselected == gender.female
                    ? activeColor
                    : InactiveColor,
                colorchild: Newcolum(
                  icon: FontAwesomeIcons.venus,
                  gender: 'Female',
                ),
              ),
            ),
          ])),
          Expanded(
            child: Reusablecard(
              color: InactiveColor,
              colorchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "Height",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: numberText,
                      ),
                      Text(
                        'cm',
                        style: SmallnumberText,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Colors.black12,
                        activeTrackColor: Colors.grey.shade100,
                        thumbColor: Colors.white,
                        overlayColor: Colors.white10,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 12),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30)),
                    child: Slider(
                        value: height.toDouble(),
                        min: 110.0,
                        max: 300.0,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        }),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Reusablecard(
                    color: InactiveColor,
                    colorchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Weight",
                          style: SmallnumberText,
                        ),
                        Text(
                          weight.toString(),
                          style: numberText,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                }),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                }),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Reusablecard(
                    color: InactiveColor,
                    colorchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Age",
                          style: SmallnumberText,
                        ),
                        Text(
                          age.toString(),
                          style: numberText,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                }),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                }),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            buttonTittle: 'CALCULATE',
            ontap: () {
              Calculatorfomula cal =
                  Calculatorfomula(height: height, weight: weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(bmiReasult: cal.calculateBMI(),
                  finalText: cal.getResult(),
                  interpretation:cal.getInterpretation() ,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
