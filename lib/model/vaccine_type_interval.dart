import 'package:flutter/foundation.dart';
import 'package:medical_health_patient/model/doctor.dart';
import 'package:medical_health_patient/model/location.dart';

class VaccineTypeInterval {
  int id, vaccineId;
  String name;
  Doctor doctor;
  Location location;
  bool isGiven;
  DateTime dateGiven;

  VaccineTypeInterval({
    @required this.id,
    this.vaccineId,
    @required this.name,
    this.doctor,
    this.location,
    @required this.isGiven,
    this.dateGiven
  });
}