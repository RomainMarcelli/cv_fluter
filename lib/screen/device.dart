import 'package:flutter/material.dart';
import 'profile.dart';
import 'formation.dart';
import 'experience.dart';
import 'competence.dart';
import 'infos.dart';

class DeviceScreen extends StatefulWidget {
  @override
  _DeviceScreenState createState() => _DeviceScreenState();
}

class _DeviceScreenState extends State<DeviceScreen> {
  int _currentScreen = 2;
  final List<Widget> _screenList = [
    // ProfileScreen(),
    // ExperienceScreen(),
    // FormationScreen(),
    // CompetenceScreen(),
    // InfosScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CV ROMAIN MARCELLI'),
      ),
      body: _screenList[_currentScreen],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Expérience'),
          BottomNavigationBarItem(
              icon: Icon(Icons.book_online), label: 'Formation'),
          BottomNavigationBarItem(
              icon: Icon(Icons.book_online), label: 'Compétence'),
          BottomNavigationBarItem(
              icon: Icon(Icons.book_online), label: 'Infos'),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentScreen = index;
    });
  }
}
