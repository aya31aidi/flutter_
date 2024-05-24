
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
          title: Text('Exemple SafeArea'),
        ),
        body: SafeArea(
          child: Center(
            child: Text(
              'Contenu de l\'application',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
