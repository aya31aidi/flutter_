import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Medication {
  final String name;
  final String prescribed_on;
  final String image_path;

  Medication({
    required this.name,
    required this.prescribed_on,
    required this.image_path,
  });

  static List<Medication> allMedication() {
    var list = <Medication>[];
    list.add(Medication(
      name: "Simvastatin 5mg",
      prescribed_on: "Aug 5, 2018",
      image_path: "images/image1.png",
    ));
    list.add(Medication(
      name: "Albuterol 180mcg",
      prescribed_on: "May 8, 2018",
      image_path: "images/image2.png",
    ));
    list.add(Medication(
      name: "Loratadine 10 mg",
      prescribed_on: "May 8, 2018",
      image_path: "images/image3.png",
    ));
    list.add(Medication(
      name: "Amoxicillin 500mg",
      prescribed_on: "Dec 17, 2017",
      image_path: "images/image4.png",
    ));
    list.add(Medication(
      name: "Hydrocortisone 1%",
      prescribed_on: "Oct 9, 2017",
      image_path: "images/image5.png",
    ));
    return list;
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Liste des Médicaments'),
        ),
        body: ListView.builder(
          itemCount: Medication.allMedication().length,
          itemBuilder: (context, index) {
            var medication = Medication.allMedication()[index];
            return Card(
              child: ListTile(
                leading: Image.asset(
                  medication.image_path,
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
                title: Text(medication.name),
                subtitle: Text('Prescrit le : ${medication.prescribed_on}'),
                onTap: () {
                  // Action à exécuter lors du tap sur l'élément de la liste
                  print('Médicament sélectionné : ${medication.name}');
                },
                
              ),
            );
          },
        ),
      ),
    );
  }
}
