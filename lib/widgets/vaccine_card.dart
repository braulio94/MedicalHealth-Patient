import 'package:flutter/material.dart';
import 'package:medical_health_patient/pages/qr_code_viewer_page.dart';
import 'package:medical_health_patient/pages/vaccine_card_page.dart';

class VaccineCard extends StatelessWidget {
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
                      color: Colors.pinkAccent,
                    ),
                    height: 32.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 16.0),
                          child: Icon(Icons.pregnant_woman, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Nome do Utente', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Numero de vacinas: 4'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Ultima data alterada'),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Text('Code QR'),
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
                          }, icon: Icon(Icons.gradient, size: 50)),
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
