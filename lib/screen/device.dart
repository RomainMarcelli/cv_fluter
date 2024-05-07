import 'package:cv_fluter/screen/experience.dart';
import 'package:flutter/material.dart';
import 'profile.dart';

class DeviceScreen extends StatefulWidget {
  @override
  _DeviceScreenState createState() => _DeviceScreenState();
}

class _DeviceScreenState extends State<DeviceScreen> {
  int _currentScreen = 0; // Premier écran par défaut
  final List<Widget> _screenList = [
    ProfileScreen(),  // Écrans à afficher
    ExperienceScreen(),  // Écrans à afficher
    ProfileScreen(),  // Écrans à afficher
    ProfileScreen(),  // Écrans à afficher
    ProfileScreen(),  // Écrans à afficher
    // Ajoutez vos autres écrans ici
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CV ROMAIN MARCELLI'),
      ),
      body: _screenList[_currentScreen], // Afficher l'écran sélectionné
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentScreen, // Marque l'élément sélectionné
        backgroundColor: Colors.white, // Couleur de fond de la barre de navigation
        selectedItemColor: Colors.blue, // Couleur de l'élément sélectionné
        unselectedItemColor: Colors.grey, // Couleur des éléments non sélectionnés
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Expérience'),
          BottomNavigationBarItem(
              icon: Icon(Icons.school), label: 'Formation'),
          BottomNavigationBarItem(
              icon: Icon(Icons.gamepad), label: 'Compétence'),
          BottomNavigationBarItem(
              icon: Icon(Icons.info), label: 'Infos'),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentScreen = index; // Change l'écran à afficher
    });
  }
}
