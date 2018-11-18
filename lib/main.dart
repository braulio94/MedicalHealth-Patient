import 'package:flutter/material.dart';
import 'package:medical_health_patient/pages/form_page.dart';

void main() => runApp(MedicalHealth());

class MedicalHealth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FormPage(),
    );
  }
}
