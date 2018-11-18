import 'package:flutter/material.dart';
import 'package:medical_health_patient/data/data.dart';
import 'package:medical_health_patient/model/patient.dart';

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
    return Container(
        child: Form(
          key: _formKey,
          child: ListView(children: <Widget>[
            Stepper(
              steps: PatientForm.fields.map((field){
                return Step(
                    title: Text(field),
                    isActive: true,
                    state: StepState.indexed,
                    content: TextFormField(
                      focusNode: _focusNode,
                      keyboardType: TextInputType.text,
                      autocorrect: false,
                      onSaved: (String value) {

                      },
                      maxLines: 1,
                      validator: (value) {
                        if (value.isEmpty || value.length < 1) {
                          return 'Please enter name';
                        }
                      },
                      decoration: InputDecoration(
                          labelText: 'Seu nome compleeto',
                          hintText: 'Nome completo',
                          icon: Icon(Icons.person),
                          labelStyle:
                          TextStyle(decorationStyle: TextDecorationStyle.solid)),
                    ),
                );
              }).toList(),
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

              },
              color: Colors.blue,
            ),
          ]),
        ));
  }
}
