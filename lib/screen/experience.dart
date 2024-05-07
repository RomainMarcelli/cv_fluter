import 'package:flutter/material.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expérience Professionnelle'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              margin: EdgeInsets.all(16),
              child: ListTile(
                leading: Image.asset(
                  'assets/logo1.png', // Chemin du logo de l'entreprise 1
                  width: 50,
                  height: 50,
                ),
                title: Text('Entreprise A'),
                subtitle: Text('Développeur Flutter (2019-2021)'),
              ),
            ),
            Card(
              margin: EdgeInsets.all(16),
              child: ListTile(
                leading: Image.asset(
                  'assets/logo2.png', // Chemin du logo de l'entreprise 2
                  width: 50,
                  height: 50,
                ),
                title: Text('Entreprise B'),
                subtitle: Text('Développeur Web (2021-2023)'),
              ),
            ),
            Card(
              margin: EdgeInsets.all(16),
              child: ListTile(
                leading: Image.asset(
                  'assets/logo3.png', // Chemin du logo de l'entreprise 3
                  width: 50,
                  height: 50,
                ),
                title: Text('Entreprise C'),
                subtitle: Text('Chef de Projet (2023-présent)'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ExperienceScreen(),
  ));
}
