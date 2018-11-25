import 'package:flutter/material.dart';
import 'package:medical_health_patient/pages/form_page.dart';
import 'package:medical_health_patient/pages/login_page.dart';

void main() => runApp(MedicalHealth());

class MedicalHealth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medical Health - Patient',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: LoginPage(),
    );
  }
}
