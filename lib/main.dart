import 'package:flutter/material.dart';
import 'package:medical_health_patient/pages/auth_page.dart';
import 'package:medical_health_patient/pages/home_page.dart';

void main() => runApp(MedicalHealth());

class MedicalHealth extends StatelessWidget {

  bool authenticated = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medical Health - Patient',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: authenticated ? HomePage() : AuthPage(),
    );
  }
}
