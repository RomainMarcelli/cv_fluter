import 'package:flutter/material.dart';
import 'screen/device.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // fontFamily: 'Poppins',
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.blueAccent,
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        body: Center(
          child: DeviceScreen(),
        ),
      ),
    );
  }
}