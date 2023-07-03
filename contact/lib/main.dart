import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('앱임')
          ),
          body: Container(
            width: 150,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black)
            ),
          ),
        )
    );
  }
}
