import 'package:flutter/material.dart';
import 'package:medical_health_patient/model/vaccine_type_interval.dart';

class VaccineInterval extends StatelessWidget {
  final VaccineTypeInterval interval;
  final Color color;

  VaccineInterval({
    this.interval,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      child: Card(
        elevation: 4.0,
        margin: EdgeInsets.all(16.0),
        child: Container(
          height: 100.0,
          width: 100.0,
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: Column(
            children: [
              Text(interval.name, style: TextStyle(fontSize: 18)),
              Divider(height: 5.0, color: color, indent: 5.0),
              interval.isGiven ? Text('Data: ${interval.dateGiven}') : Container(),
              interval.isGiven ? Text('Local: ${interval.location.name}') : Container(),
              interval.isGiven ? Text('Doutor: ${interval.doctor.name}') : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
