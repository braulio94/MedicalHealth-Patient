import 'package:medical_health_patient/model/doctor.dart';
import 'package:medical_health_patient/model/location.dart';

class VaccineInterval {
  int id, vaccineId;
  Doctor doctor;
  Location location;
  bool isGiven;
  DateTime dateGiven;

  VaccineInterval({
    this.id,
    this.vaccineId,
    this.doctor,
    this.location,
    this.isGiven,
    this.dateGiven
  });
}