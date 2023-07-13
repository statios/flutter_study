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
          body: SizedBox(
            child: Text(
              '안녕하세요',
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 27
              ),
            )
          )
        )
    );
  }
}
