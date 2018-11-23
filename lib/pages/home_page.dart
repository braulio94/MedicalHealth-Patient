import 'package:flutter/material.dart';
import 'package:medical_health_patient/widgets/vaccine_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

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
          title: Text('Meu Codigo QR'),
          leading: Container(),
        ),
        body: ListView(
          children: [
            VaccineCard(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.pinkAccent,
          onPressed: (){

          },
          tooltip: 'Adicionar Cartao de Vacina',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
