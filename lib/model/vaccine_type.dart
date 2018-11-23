import 'package:flutter/material.dart';
import 'package:medical_health_patient/model/vaccine_type_interval.dart';

class VaccineType {
  int id;
  String name;
  String abr;
  List<VaccineTypeInterval> intervals;
  Color color;

  VaccineType({
    this.id,
    this.name,
    this.abr,
    this.intervals,
    this.color,
  });

}