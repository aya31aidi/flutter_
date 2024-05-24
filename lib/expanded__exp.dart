

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Exemple d\'Expanded'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 100,
              color: Colors.blue,
              child: Center(child: Text('Widget 1')),
            ),
            Expanded(
              child: Card(
                color: Colors.green,
                child: Center(child: Text('Widget 2 - Expanded')),
              ),
            ),
            Container(
              height: 100,
              color: Colors.red,
              child: Center(child: Text('Widget 3')),
            ),
          ],
        ),
      ),
    );
  }
}
