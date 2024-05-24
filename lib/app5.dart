import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> myList = List.generate(10, (index) {
    return {
      "id": index,
      "title": "Ceci est le titre $index",
      "subtitle": "Ceci est le sous-titre $index"
    };
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App'),
        ), // AppBar
        body: ListView.builder(
          //scrollDirection: Axis.vertical,
          itemCount: myList.length,
          itemBuilder: (context, index) => Card(
            elevation: 6,
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: CircleAvatar(
                child: Text(myList[index]["id"].toString()),
                backgroundColor: Color.fromARGB(255, 208, 174, 210),
              ), // CircleAvatar
              title: Text(myList[index]["title"]),
              subtitle: Text(myList[index]["subtitle"]),
              trailing: Icon(Icons.add_link),
            ), // ListTile
          ), // Card
        ), // ListView.builder
      ), // Scaffold
    ); // MaterialApp
  }
}
