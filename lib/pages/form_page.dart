import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';
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
  Patient patient;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario'),
        leading: Container(),
      ),
      body: Stepper(
        controlsBuilder: (BuildContext context,
            {VoidCallback onStepContinue, VoidCallback onStepCancel}) {
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
          Step(
              title: Text('Nome'),
              content: PatientForm.name(),
              isActive: currStep == 0 ? true : false),
          Step(
              title: Text('Sexo'),
              content: PatientForm.gender(gender: Gender.Male),
              isActive: currStep == 1 ? true : false),
          Step(
              title: Text('Data de Nascimento'),
              content: PatientForm.birthDate(
                onTap: (){
                  DatePicker.showDatePicker(
                      context,
                      showTitleActions: true,
                      locale: 'pt-br',
                      minYear: 1970,
                      maxYear: 2020,
                      initialYear: DateTime.now().year,
                      initialMonth: DateTime.now().month,
                      initialDate: DateTime.now().day,
                      dateFormat: 'dd-mm-yyyy',
                      onChanged: (int year, int month, int date) { },
                      onConfirm: (year, month, date) {},
                  );
                },
              ),
              isActive: currStep == 2 ? true : false),
          Step(
              title: Text('Afiliacao'),
              content: PatientForm.filiation(),
              isActive: currStep == 3 ? true : false),
          Step(
              title: Text('Morada'),
              content: PatientForm.location(),
              isActive: currStep == 4 ? true : false),
          Step(
              title: Text('Numero de telefone'),
              content: PatientForm.phoneNumber(),
              isActive: currStep == 5 ? true : false),
        ],
        type: StepperType.vertical,
        currentStep: this.currStep,
        onStepContinue: () {
          setState(() {
            if (currStep < PatientForm.fields.length - 1) {
              currStep = currStep + 1;
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
      persistentFooterButtons: [
        FlatButton(
          child: Text(
            'Cancelar',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {},
          color: Colors.blue,
        ),
        FlatButton(
          child: Text(
            'Salvar Dados',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HomePage();
            }));
          },
          color: Colors.blue,
        ),
      ],
    );
  }
}

class FormPageValidator {
  Patient patient;

}
