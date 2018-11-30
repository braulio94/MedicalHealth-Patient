import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:medical_health_patient/model/patient.dart';
import 'package:medical_health_patient/pages/form_page.dart';
import 'package:medical_health_patient/widgets/vaccine_card.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomePage extends StatefulWidget {
  final Patient patient;

  HomePage({this.patient});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Firestore fireStore;

  @override
  void initState() {
    super.initState();
    _initFireStore();
    if(widget.patient != null){
      _saveNewPatientVaccineCard();
    }
  }


  void _saveNewPatientVaccineCard() {

  }

  void _initFireStore() async {
    final FirebaseApp app = await FirebaseApp.configure(
      name: 'Medical Health',
      options: const FirebaseOptions(
        googleAppID: '1:812242125853:android:6a53762441e7668c',
        gcmSenderID: '812242125853',
        apiKey: 'AIzaSyAxIAb3qXF_SYHC8GSm9BJ5keOXAhMTams',
        projectID: 'medical-health-doctor',
      ),
    );
    fireStore = Firestore(app: app);
    await fireStore.settings(timestampsInSnapshotsEnabled: true);
  }

  Future<bool> _exitApp() async {
    return showDialog(
        context: context,
        builder: (builderContext) {
          return AlertDialog(
            title: new Text("Aviso"),
            content: new Text("Tem a certeza que deseja sair do aplicativo?"),
            actions: <Widget>[
              new FlatButton(
                onPressed: () => Navigator.of(builderContext).pop(false),
                child: new Text("Não"),
              ),
              new FlatButton(
                onPressed: () => Navigator.of(builderContext).pop(true),
                child: new Text("Sim"),
              )
            ],
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _exitApp,
      child: Scaffold(
        appBar: AppBar(
          leading: Container(),
        ),
        body: StreamBuilder<QuerySnapshot>(
          stream: Firestore.instance.collection('patients').snapshots(),
          builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError)
              return new Text('Error: ${snapshot.error}');
            switch (snapshot.connectionState) {
              case ConnectionState.waiting: return new Text('Loading...');
              default:
                return new ListView(
                  children: snapshot.data.documents.map((DocumentSnapshot document) {
                    var patient = Patient(
                      age: document['age'],
                      name: document['name'],
                      sex: document['sex'],
                      //vaccineCardId: document['vaccineCardId'],
                      nationality: document['nationality'],
                      birthDate: document['birthDate'],
                    );
                    return VaccineCard(patient: patient);
                  }).toList(),
                );
            }
          },
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.pinkAccent,
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context){
                return FormPage();
              }
            ));
          },
          tooltip: 'Adicionar Cartao de Vacina',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
