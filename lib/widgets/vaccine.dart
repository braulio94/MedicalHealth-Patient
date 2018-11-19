import 'package:flutter/material.dart';
import 'package:medical_health_patient/model/vaccine_type.dart';

class Vaccine extends StatelessWidget {
  final VaccineType vaccine;

  Vaccine({
    this.vaccine,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: vaccine.intervals.map((interval){
        return Container(
          height: 100.0,
          width: 100.0,
          margin: EdgeInsets.all(16.0),
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text('Interval #${interval.id}'),
              Divider(height: 2.0, color: Colors.blue[700]),
              vaccine.isTaken ? Text('Data: ${interval.dateGiven}') : Container(),
              vaccine.isTaken ? Text('Local: ${interval.location.name}') : Container(),
              vaccine.isTaken ? Text('Doutor: ${interval.doctor.name}') : Container(),
            ],
          ),
        );
      }).toList(),
    );
  }
}
