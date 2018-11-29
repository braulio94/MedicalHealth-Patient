import 'package:flutter/material.dart';
import 'package:medical_health_patient/data/medical_health_icons.dart';
import 'package:medical_health_patient/model/patient.dart';
import 'package:medical_health_patient/pages/qr_code_viewer_page.dart';
import 'package:medical_health_patient/pages/vaccine_card_page.dart';

class VaccineCard extends StatelessWidget {

  final Patient patient;

  VaccineCard({this.patient});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Card(
        margin: EdgeInsets.all(16.0),
        elevation: 4.0,
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context){
                return VaccineCardPage();
              }
            ));
          },
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0), topRight: Radius.circular(5.0)),
                      color: Colors.blue,
                    ),
                    height: 32.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 16.0),
                          child: Text(patient.name, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(right: 4.0),
                              child: Icon(patient.sex == 1 ? MedicalHealthIcon.male : MedicalHealthIcon.female, color: Colors.white, size: 18),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 16.0),
                              child: Text('${patient.age}', style: TextStyle(color: Colors.white)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 8.0),
                  child: Text('Numero de vacinas: 4'),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 8.0),
                  child: Text('Ultima data alterada'),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Text('Codigo QR'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 32.0),
                        child: IconButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context){
                                return QRCodeViewerPage();
                              }
                            ));
                          }, icon: Icon(MedicalHealthIcon.qrcode, size: 50)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
