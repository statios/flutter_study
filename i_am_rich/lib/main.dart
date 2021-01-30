import 'package:flutter/material.dart';

// The main function is the starting point for all our Flutter apps.
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('I Am Rich'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image(
            image: NetworkImage(
                'https://i.pinimg.com/originals/fa/a1/9d/faa19d0e3ab2208b20eeb9141ea8336a.jpg'),
          ),
        ),
      ),
    ),
  );
}
