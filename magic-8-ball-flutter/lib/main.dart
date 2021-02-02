import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text(
              'Ask Me Anything',
              style: TextStyle(fontSize: 30.0),
            ),
            backgroundColor: Colors.blueAccent,
          ),
          body: Center(
            child: RandomBall(),
          ),
        ),
      ),
    );

class RandomBall extends StatefulWidget {
  @override
  _RandomBallState createState() => _RandomBallState();
}

class _RandomBallState extends State<RandomBall> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Image.asset('images/ball$ballNumber.png'),
      onPressed: () {
        setState(() {
          ballNumber = Random().nextInt(5) + 1;
        });
      },
    );
  }
}
