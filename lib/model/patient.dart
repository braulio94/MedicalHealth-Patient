import 'package:medical_health_patient/model/filiation.dart';
import 'package:medical_health_patient/model/location.dart';

class Patient {
  int id;
  int vaccineCardId;
  String name;
  int sex;
  DateTime birthDate;
  Filiation filiation;
  String nationality;
  Location location;
  String phoneNumber;
  int age;

  Patient({
    this.id,
    this.vaccineCardId,
    this.name,
    this.sex,
    this.birthDate,
    this.filiation,
    this.nationality,
    this.location,
    this.phoneNumber,
    this.age
  });


  Patient copyWith({
    int id,
    int vaccineCardId,
    String name,
    int sex,
    DateTime birthDate,
    Filiation filiation,
    String nationality,
    Location location,
    String phoneNumber,
    int age,
  }) {
    return Patient(
      id: id ?? this.id,
      vaccineCardId: vaccineCardId ?? this.vaccineCardId,
      name: name ?? this.name,
      sex: sex ?? this.sex,
      birthDate: birthDate ?? this.birthDate,
      filiation: filiation ?? this.filiation,
      nationality: nationality ?? this.nationality,
      location: location ?? this.location,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      age: age ?? this.age,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Patient &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              vaccineCardId == other.vaccineCardId &&
              name == other.name &&
              sex == other.sex &&
              birthDate == other.birthDate &&
              filiation == other.filiation &&
              nationality == other.nationality &&
              location == other.location &&
              phoneNumber == other.phoneNumber &&
              age == other.age;

  @override
  int get hashCode =>
      id.hashCode ^
      vaccineCardId.hashCode ^
      name.hashCode ^
      sex.hashCode ^
      birthDate.hashCode ^
      filiation.hashCode ^
      nationality.hashCode ^
      location.hashCode ^
      phoneNumber.hashCode ^
      age.hashCode;

}