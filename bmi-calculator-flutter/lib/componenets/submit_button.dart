import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class SubmitButton extends StatelessWidget {
  final String title;
  final Function onPressed;

  SubmitButton({this.title, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          color: kBottomContainerColor,
          margin: EdgeInsets.only(top: 10.0),
          width: double.infinity,
          height: kBottomContainerHeight,
          child: Center(
            child: Text(
              title,
              style: kLargeButtonTextStyle,
            ),
          ),
          padding: EdgeInsets.only(bottom: 20.0),
        ),
        onTap: onPressed);
  }
}
