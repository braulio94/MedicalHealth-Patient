import 'package:medical_health_patient/model/vaccine_interval.dart';

class VaccineType {
  int id;
  String name;
  String abr;
  bool isTaken;
  List<VaccineInterval> intervals;

  VaccineType({
    this.id,
    this.name,
    this.abr,
    this.intervals,
    this.isTaken,
  });

}