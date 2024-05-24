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
          title: Text('Exemple de Boutons avec Container'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Boutons
            
            ElevatedButton(
              onPressed: () {
                // Action à effectuer lors du clic sur le bouton
                print('Bouton ElevatedButton cliqué !');
              },
              child: Text('ElevatedButton'),
            ),
            SizedBox(height: 20), // Espacement entre les boutons
            TextButton(
              onPressed: () {
                // Action à effectuer lors du clic sur le bouton
                print('Bouton TextButton cliqué !');
              },
              child: Text('TextButton'),
            ),
            SizedBox(height: 20), // Espacement entre les boutons
            OutlinedButton(
              onPressed: () {
                // Action à effectuer lors du clic sur le bouton
                print('Bouton OutlinedButton cliqué !');
              },
              child: Text('OutlinedButton'),
            ),
            SizedBox(height: 40), // Espacement supplémentaire entre les boutons et le Container
            // Container en dessous des boutons
            
            Container(
              
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 228, 169, 169),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Ceci est un Container en dessous des boutons',
                style: TextStyle(fontSize: 18),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
