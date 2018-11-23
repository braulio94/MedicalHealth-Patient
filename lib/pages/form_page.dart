import 'package:flutter/material.dart';
import 'package:medical_health_patient/data/data.dart';
import 'package:medical_health_patient/model/gender.dart';
import 'package:medical_health_patient/model/patient.dart';
import 'package:medical_health_patient/pages/home_page.dart';
import 'package:medical_health_patient/widgets/patient_form.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {

  int currStep = 0;
  static var _focusNode = FocusNode();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Patient patient;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {});
      print('Has focus: $_focusNode.hasFocus');
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: ListView(children: <Widget>[
          Stepper(
            controlsBuilder:
              (BuildContext context, {VoidCallback onStepContinue, VoidCallback onStepCancel}) {
                 return Row(
                   children: <Widget>[
                     FlatButton(
                       onPressed: onStepContinue,
                       child: Text('Continuar'),
                     ),
                     FlatButton(
                       onPressed: onStepCancel,
                       child: Text('Voltar'),
                     ),
                   ],
                 );
              },
            steps: [
              Step(title: Text('Nome'), content: PatientForm.name(focusNode: _focusNode), isActive: currStep == 0 ? true : false),
              Step(title: Text('Sexo'), content: PatientForm.gender(focusNode: _focusNode, gender: Gender.Male), isActive: currStep == 1 ? true : false),
              Step(title: Text('Afiliacao'), content: PatientForm.filiation(focusNode: _focusNode), isActive: currStep == 2 ? true : false),
              Step(title: Text('Morada'), content: PatientForm.location(focusNode: _focusNode), isActive: currStep == 3 ? true : false),
              Step(title: Text('Morada'), content: PatientForm.phoneNumber(focusNode: _focusNode), isActive: currStep == 4 ? true : false),
            ],
            type: StepperType.vertical,
            currentStep: this.currStep,
            onStepContinue: () {
              setState(() {
                if (currStep < PatientForm.fields.length - 1) {
                  currStep = currStep + 1;
                } else {
                  currStep = 0;
                }
              });
            },
            onStepCancel: () {
              setState(() {
                if (currStep > 0) {
                  currStep = currStep - 1;
                } else {
                  currStep = 0;
                }
              });
            },
            onStepTapped: (step) {
              setState(() {
                currStep = step;
              });
            },
          ),
          RaisedButton(
            child: Text(
              'Salvar Dados',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return HomePage();
              }));
            },
            color: Colors.blue,
          ),
        ]),
      ),
    );
  }
}
