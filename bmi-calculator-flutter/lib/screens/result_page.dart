import 'package:flutter/material.dart';
import '../constants.dart';
import '../componenets/reusable_card.dart';
import '../componenets/submit_button.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Your Result',
              style: kTitleTextStyle,
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      resultText.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    alignment: Alignment.center,
                  ),
                  Container(
                    child: Text(
                      bmiResult,
                      style: kBMITextStyle,
                    ),
                    alignment: Alignment.center,
                  ),
                  Container(
                    child: Text(
                      interpretation,
                      style: kBodyextStyle,
                      textAlign: TextAlign.center,
                    ),
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
          SubmitButton(
            title: 'RE-CALCULATE',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
