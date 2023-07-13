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
            leading: Icon(Icons.star),
            title: Text('앱임')
          ),
          body: SizedBox(
            child: IconButton(
              icon: Icon(Icons.star),
              onPressed: (){},
            )
          )
        )
    );
  }
}
