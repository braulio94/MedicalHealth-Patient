import 'package:flutter/material.dart';
import 'package:medical_health_patient/model/vaccine_type_interval.dart';
import 'package:medical_health_patient/model/vaccine_type.dart';

List<String> filiation = [
  'do Pai',
  'da Mae',
];

List<String> provinces = [
  'Selecione a Provincia'
  'Luanda',
  'Benguela',
  'Cabinda',
  'Huambo',
  'Malange',
  'Bie',
  'Namibe',
  'Moxico',
  'Cunene',
  'Lunda Norte',
  'Lunda Sul',
  'Kuanza Norte',
  'Kwanza Sul',
  'Zaire',
  'Bengo',
  'Uige',
  'Kuando Kubango',
  'Huila',
];



List<VaccineType> vaccines = [
  VaccineType(
      id: 1,
      name: 'Polio',
      abr: 'VIP',
      color: Colors.lightBlue,
      intervals: [
        VaccineTypeInterval(
          id: 0,
          name: '1a Dose',
          isGiven: false,
        ),
        VaccineTypeInterval(
          id: 1,
          name: '2a Dose',
          isGiven: false,
        ),
        VaccineTypeInterval(
          id: 2,
          name: '3a Dose',
          isGiven: false,
        ),
        VaccineTypeInterval(
          id: 3,
          name: '4a Dose',
          isGiven: false,
        ),
      ]
  ),
  VaccineType(
      id: 2,
      name: 'Sarampo',
      abr: 'VAS',
      color: Colors.redAccent,
      intervals: [
        VaccineTypeInterval(
          id: 0,
          name: '1a Dose',
          isGiven: false,
        ),
        VaccineTypeInterval(
          id: 0,
          name: '1a Dose',
          isGiven: false,
        ),
      ]
  ),
  VaccineType(
      id: 3,
      name: 'BCG',
      abr: 'BCG',
      color: Colors.pink[300],
      intervals: [
        VaccineTypeInterval(
          id: 0,
          name: 'Dose unica',
          isGiven: false,
        ),
      ]
  ),
  VaccineType(
      id: 4,
      name: 'Pentavalente',
      abr: 'PNT',
      color: Colors.green[700],
      intervals: [
        VaccineTypeInterval(
          id: 0,
          name: '1a Dose',
          isGiven: false,
        ),
        VaccineTypeInterval(
          id: 1,
          name: '2a Dose',
          isGiven: false,
        ),
        VaccineTypeInterval(
          id: 2,
          name: '3a Dose',
          isGiven: false,
        ),
      ],
  ),
  VaccineType(
      id: 5,
      name: 'Febre Amarela',
      abr: 'BCG',
      color: Colors.yellow,
      intervals: [
        VaccineTypeInterval(
          id: 0,
          name: 'Dose Unica',
          isGiven: false,
        ),
      ],
  ),
  VaccineType(
      id: 6,
      name: 'Hepatite B',
      abr: 'BCG',
      color: Colors.purple,
      intervals: [
        VaccineTypeInterval(
          id: 0,
          name: 'Dose a nascenca',
          isGiven: false,
        ),
      ]
  ),
  VaccineType(
      id: 7,
      name: 'Pneumo',
      abr: 'VPS',
      color: Colors.greenAccent,
      intervals: [
        VaccineTypeInterval(
          id: 0,
          name: '1a Dose',
          isGiven: false,
        ),
        VaccineTypeInterval(
          id: 1,
          name: '2a Dose',
          isGiven: false,
        ),
        VaccineTypeInterval(
          id: 2,
          name: '3a Dose',
          isGiven: false,
        ),
      ]
  ),
  VaccineType(
      id: 8,
      name: 'Vitamina A',
      abr: 'VPS',
      color: Colors.red,
      intervals: [
        VaccineTypeInterval(
          id: 0,
          name: '1a Dose',
          isGiven: false,
        ),
        VaccineTypeInterval(
          id: 1,
          name: '2a Dose',
          isGiven: false,
        ),
      ],
  ),
];