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
          title: Text('Exemple de Stack'),
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            fit: StackFit.loose,
            children: <Widget>[
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              ),
              Positioned(
                top: 20,
                left: 20,
                child: Text(
                  'En haut à gauche',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              Positioned(
                bottom: 20,
                right: 20,
                child: Text(
                  'En bas à droite',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
