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
          body: Text('안녕'),
          bottomNavigationBar: BottomAppBar(
            child: SizedBox(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(Icons.phone),
                    onPressed: () {}
                  ),
                  IconButton(
                      icon: Icon(Icons.message),
                      onPressed: () {}
                  ),
                  IconButton(
                      icon: Icon(Icons.contact_page),
                      onPressed: () {}
                  )
                ],
              ),
            ),
          )
        )
    );
  }
}
