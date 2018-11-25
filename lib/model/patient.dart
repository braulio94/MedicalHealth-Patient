class Patient {
  int id;
  int vaccineCardId;
  String name;
  int sex;
  DateTime birthDate;
  int filiationId;
  String nationality;
  int locationId;
  String phoneNumber;
  int age;

  Patient({
    this.id,
    this.vaccineCardId,
    this.name,
    this.sex,
    this.birthDate,
    this.filiationId,
    this.nationality,
    this.locationId,
    this.phoneNumber,
    this.age
  });

  Patient copyWith({
    int id,
    int vaccineCardId,
    String name,
    int sex,
    DateTime birthDate,
    int filiationId,
    String nationality,
    int locationId,
    String phoneNumber,
    int age,
  }) {
    return Patient(
      id: id ?? this.id,
      vaccineCardId: vaccineCardId ?? this.vaccineCardId,
      name: name ?? this.name,
      sex: sex ?? this.sex,
      birthDate: birthDate ?? this.birthDate,
      filiationId: filiationId ?? this.filiationId,
      nationality: nationality ?? this.nationality,
      locationId: locationId ?? this.locationId,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      age: age ?? this.age,
    );
  }
}