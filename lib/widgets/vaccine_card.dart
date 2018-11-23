import 'package:flutter/material.dart';
import 'package:medical_health_patient/pages/vaccine_card_page.dart';

class VaccineCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      elevation: 4.0,
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(
            builder: (context){
              return VaccineCardPage();
            }
          ));
        },
        child: Container(
          height: 200.0,
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 24.0,
              color: Colors.pinkAccent,
            ),
          ),
        ),
      ),
    );
  }
}
