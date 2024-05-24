import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Exemple d\'AppBar avec Actions'),
          actions: [
            IconButton(
              icon: Icon(Icons.check_circle),
              onPressed: () {
                // Action à exécuter lors du tap sur l'icône de recherche
                print('Recherche tapée !');
              },
            ),
            PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Text('Option 1'),
                  value: 1,
                ),
                PopupMenuItem(
                  child: Text('Option 2'),
                  value: 2,
                ),
              ],
              onSelected: (value) {
                // Action à exécuter lorsque l'option du menu est sélectionnée
                print('Option $value sélectionnée !');
              },
            ),
          ],
        ),
        body: Center(
          child: Text('Contenu de l\'écran'),
        ),
      ),
    );
  }
}
