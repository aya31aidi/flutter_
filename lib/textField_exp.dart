import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyTextFieldExample(),
    );
  }
}

class MyTextFieldExample extends StatefulWidget {
  @override
  _MyTextFieldExampleState createState() => _MyTextFieldExampleState();
}
/*class MyTextFieldExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyTextFieldExampleState(); // Retourne une instance de _StateClasseType2
  }
}*/


class _MyTextFieldExampleState extends State<MyTextFieldExample> {
  String _enteredText = '';

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      appBar: AppBar(
        title: Text('Exemple de TextField'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              onChanged: (value) {
                // Mettre à jour l'état lorsque le texte change
                setState(() {
                  _enteredText = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'Entrez du texte',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Texte saisi : $_enteredText',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
