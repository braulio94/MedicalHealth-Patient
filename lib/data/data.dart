import 'package:flutter/material.dart';
import 'package:medical_health_patient/model/vaccine_type_interval.dart';
import 'package:medical_health_patient/model/vaccine_type.dart';

List<String> filiation = [
  'do Pai',
  'da Mae',
];

List<String> provinces = [
  'Selecione a Provincia',
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

List<String> municipalities = [
  'Selecionar Municipio',
  'Belas',
  'Luanda',
  'Viana',
  'Cazenga',
  'Cacuaco',
  'Icolo e Bengo',
  'Quicama',
];
List<String> municipalities2 = [
  'Selecionar Municipio',
  'Lobito',
  'Baia-Farta',
  'Balombo',
  'Benguela',
  'Bocoio',
  'Caimbambo',
  'Catumbela',
  'Chongoroi',
  'Cubal',
  'Ganda',
];
List<String> municipalities3 = [
  'Selecionar Municipio',
  'Belize',
  'Buco-Zau',
  'Cabinda',
  'Cacongo',
];
List<String> municipalities4 = [
  'Selecionar Municipio',
  'Huambo',
  'Caala',
  'Ekunha',
  'Longonjo',
  'Ukuma',
  'Bailundo',
  'Tchicala Tcholonga',
  'Londuimbali',
];
List<String> municipalities5 = [
  'Selecionar Municipio',
  'Cacuso',
  'Kalandula',
  'Kambundi-Katembo',
  'Cangandala',
  'Caombo',
  'Kiwaba Nzogi',
  'Kunda-dia-Bazi',
  'Luquembo',
  'Malanje',
  'Marimba',
  'Massango',
  'Mucari',
  'Quela',
  'Quirima',
];
List<String> municipalities6 = [
  'Selecionar Municipio',
  'Kuito',
  'Andulo',
  'Camacupa',
  'Catabola',
  'Chinguar',
  'Chitembo',
  'Cuemba',
  'Nharea',
];
List<String> municipalities7 = [
  'Selecionar Municipio',
  'Namibe',
  'Bibala',
  'Camaculo',
  'Tombua',
  'Virei',
];

List<String> municipalities8 = [
  'Selecionar Municipio',
  'Alto Zambeze',
  'Bundas',
  'Camanongue',
  'Cameia',
  'Léua',
  'Luau',
  'Luacano',
  'Luchazes',
  'Moxico',
];

List<String> municipalities9 = [
  'Selecionar Municipio',
  'Cahama',
  'Kuroka',
  'Kuvelai',
  'Kwanhama',
  'Namakunde',
  'Ombadja',
  'Ondjiva',
];

List<String> municipalities10 = [
  'Selecionar Municipio',
  'Capemba-Camulemba',
  'Caumbo',
  'Caungula',
  'Chitato',
  'Cuango',
  'Cuilo',
  'Lubalo',
  'Lucapa',
  'Shah-Muteba',
];

List<String> municipalities11 = [
  'Selecionar Municipio',
  'Cacolo',
  'Dala',
  'Muconda',
  'Saurimo',
];

List<String> municipalities12 = [
  'Selecionar Municipio',
  'Ambaca',
  'Banga',
  'Bolongongo',
  'Bula-Atumba',
  'Cambambe',
  'Cazenga',
  'Dembos',
  'Golungo Alto',
  'Gonguenmbo',
  'Lucala',
  'Pango-Aluquem',
  'Quiculungo',
  'Samba Caju',
];

List<String> municipalities13 = [
  'Selecionar Municipio',
  'Amboim',
  'Cassongue',
  'Conda',
  'Ebo',
  'Libolo',
  'Mussende',
  'Porto Amboim',
  'Quibala',
  'Quilenda',
  'Seles',
  'Sumbe',
  'Waku-Kungo',
];

List<String> municipalities14 = [
  'Selecionar Municipio',
  'M\'Banza Congo',
  'Soyo',
  'N\'Zeto',
  'Cuimba',
  'Nóqui',
  'Tomboco',
];

List<String> municipalities15 = [
  'Selecionar Municipio',
  'Ambriz',
  'Dande',
  'Icolo e Bengo',
  'Nambuagongo',
  'Quicama',
];

List<String> municipalities16 = [
  'Selecionar Municipio',
  'Alto Cauale',
  'Ambuila',
  'Bembe',
  'Buengas',
  'Bungo',
  'Damba',
  'Macocola',
  'Milunga',
  'Mucaba',
  'Negage',
  'Puri',
  'Quimbele',
  'Quitexe',
  'Sanza Pombo',
  'Songo',
  'Uíge',
  'Zombo',
];

List<String> municipalities17 = [
  'Selecionar Municipio',
  'Calai',
  'Cuangar',
  'Cuchi',
  'Cuito Cuanavale',
  'Dirico',
  'Longa',
  'Mavinga',
  'Menongue',
  'Nancova',
  'Rivungo',
];

List<String> municipalities18 = [
  'Selecionar Municipio',
  'Cacula',
  'Caluquembe',
  'Chibia',
  'Chipindo',
  'Chiange',
  'Humpata',
  'Jamba',
  'Kuvango',
  'Lubango',
  'Matala',
  'Quilengues',
  'Quipungo',
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