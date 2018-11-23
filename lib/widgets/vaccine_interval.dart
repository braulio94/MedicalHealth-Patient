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
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Container(
        height: 100.0,
        width: 100.0,
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(interval.name),
            Divider(height: 2.0, color: color),
            interval.isGiven ? Text('Data: ${interval.dateGiven}') : Container(),
            interval.isGiven ? Text('Local: ${interval.location.name}') : Container(),
            interval.isGiven ? Text('Doutor: ${interval.doctor.name}') : Container(),
          ],
        ),
      ),
    );
  }
}
