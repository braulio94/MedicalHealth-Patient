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

//<array name="municipalities">
//<item>Selecionar Municipio</item>
//<item>Belas</item>
//<item>Luanda</item>
//<item>Viana</item>
//<item>Cazenga</item>
//<item>Cacuaco</item>
//<item>Icolo e Bengo</item>
//<item>Quicama</item>
//</array>
//<array name="municipalities2">
//<item>Selecionar Municipio</item>
//<item>Lobito</item>
//<item>Baia-Farta</item>
//<item>Balombo</item>
//<item>Benguela</item>
//<item>Bocoio</item>
//<item>Caimbambo</item>
//<item>Catumbela</item>
//<item>Chongoroi</item>
//<item>Cubal</item>
//<item>Ganda</item>
//</array>
//<array name="municipalities3">
//<item>Selecionar Municipio</item>
//<item>Belize</item>
//<item>Buco-Zau</item>
//<item>Cabinda</item>
//<item>Cacongo</item>
//</array>
//<array name="municipalities4">
//<item>Selecionar Municipio</item>
//<item>Huambo</item>
//<item>Caala</item>
//<item>Ekunha</item>
//<item>Longonjo</item>
//<item>Ukuma</item>
//<item>Bailundo</item>
//<item>Tchicala Tcholonga</item>
//<item>Londuimbali</item>
//</array>
//<array name="municipalities5">
//<item>Selecionar Municipio</item>
//<item>Cacuso</item>
//<item>Kalandula</item>
//<item>Kambundi-Katembo</item>
//<item>Cangandala</item>
//<item>Caombo</item>
//<item>Kiwaba Nzogi</item>
//<item>Kunda-dia-Bazi</item>
//<item>Luquembo</item>
//<item>Malanje</item>
//<item>Marimba</item>
//<item>Massango</item>
//<item>Mucari</item>
//<item>Quela</item>
//<item>Quirima</item>
//</array>
//<array name="municipalities6">
//<item>Selecionar Municipio</item>
//<item>Kuito</item>
//<item>Andulo</item>
//<item>Camacupa</item>
//<item>Catabola</item>
//<item>Chinguar</item>
//<item>Chitembo</item>
//<item>Cuemba</item>
//<item>Nharea</item>
//</array>
//<array name="municipalities7">
//<item>Selecionar Municipio</item>
//<item>Namibe</item>
//<item>Bibala</item>
//<item>Camaculo</item>
//<item>Tombua</item>
//<item>Virei</item>
//</array>
//
//<array name="municipalities8">
//<item>Selecionar Municipio</item>
//<item>Alto Zambeze</item>
//<item>Bundas</item>
//<item>Camanongue</item>
//<item>Cameia</item>
//<item>Léua</item>
//<item>Luau</item>
//<item>Luacano</item>
//<item>Luchazes</item>
//<item>Moxico</item>
//</array>
//
//<array name="municipalities9">
//<item>Selecionar Municipio</item>
//<item>Cahama</item>
//<item>Kuroka</item>
//<item>Kuvelai</item>
//<item>Kwanhama</item>
//<item>Namakunde</item>
//<item>Ombadja</item>
//<item>Ondjiva</item>
//</array>
//
//<array name="municipalities10">
//<item>Selecionar Municipio</item>
//<item>Capemba-Camulemba</item>
//<item>Caumbo</item>
//<item>Caungula</item>
//<item>Chitato</item>
//<item>Cuango</item>
//<item>Cuilo</item>
//<item>Lubalo</item>
//<item>Lucapa</item>
//<item>Shah-Muteba</item>
//</array>
//
//<array name="municipalities11">
//<item>Selecionar Municipio</item>
//<item>Cacolo</item>
//<item>Dala</item>
//<item>Muconda</item>
//<item>Saurimo</item>
//</array>
//
//<array name="municipalities12">
//<item>Selecionar Municipio</item>
//<item>Ambaca</item>
//<item>Banga</item>
//<item>Bolongongo</item>
//<item>Bula-Atumba</item>
//<item>Cambambe</item>
//<item>Cazenga</item>
//<item>Dembos</item>
//<item>Golungo Alto</item>
//<item>Gonguenmbo</item>
//<item>Lucala</item>
//<item>Pango-Aluquem</item>
//<item>Quiculungo</item>
//<item>Samba Caju</item>
//</array>
//
//<array name="municipalities13">
//<item>Selecionar Municipio</item>
//<item>Amboim</item>
//<item>Cassongue</item>
//<item>Conda</item>
//<item>Ebo</item>
//<item>Libolo</item>
//<item>Mussende</item>
//<item>Porto Amboim</item>
//<item>Quibala</item>
//<item>Quilenda</item>
//<item>Seles</item>
//<item>Sumbe</item>
//<item>Waku-Kungo</item>
//</array>
//
//<array name="municipalities14">
//<item>Selecionar Municipio</item>
//<item>"M'Banza Congo"</item>
//<item>Soyo</item>
//<item>"N'Zeto"</item>
//<item>Cuimba</item>
//<item>Nóqui</item>
//<item>Tomboco</item>
//</array>
//
//<array name="municipalities15">
//<item>Selecionar Municipio</item>
//<item>Ambriz</item>
//<item>Dande</item>
//<item>Icolo e Bengo</item>
//<item>Nambuagongo</item>
//<item>Quicama</item>
//</array>
//
//<array name="municipalities16">
//<item>Selecionar Municipio</item>
//<item>Alto Cauale</item>
//<item>Ambuila</item>
//<item>Bembe</item>
//<item>Buengas</item>
//<item>Bungo</item>
//<item>Damba</item>
//<item>Macocola</item>
//<item>Milunga</item>
//<item>Mucaba</item>
//<item>Negage</item>
//<item>Puri</item>
//<item>Quimbele</item>
//<item>Quitexe</item>
//<item>Sanza Pombo</item>
//<item>Songo</item>
//<item>Uíge</item>
//<item>Zombo</item>
//</array>
//
//<array name="municipalities17">
//<item>Selecionar Municipio</item>
//<item>Calai</item>
//<item>Cuangar</item>
//<item>Cuchi</item>
//<item>Cuito Cuanavale</item>
//<item>Dirico</item>
//<item>Longa</item>
//<item>Mavinga</item>
//<item>Menongue</item>
//<item>Nancova</item>
//<item>Rivungo</item>
//</array>
//
//<array name="municipalities18">
//<item>Selecionar Municipio</item>
//<item>Cacula</item>
//<item>Caluquembe</item>
//<item>Chibia</item>
//<item>Chipindo</item>
//<item>Chiange</item>
//<item>Humpata</item>
//<item>Jamba</item>
//<item>Kuvango</item>
//<item>Lubango</item>
//<item>Matala</item>
//<item>Quilengues</item>
//<item>Quipungo</item>
//</array>

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