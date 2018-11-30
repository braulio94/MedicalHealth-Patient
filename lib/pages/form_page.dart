import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';
import 'package:flutter_cupertino_date_picker/locale_message.dart';
import 'package:medical_health_patient/data/data.dart';
import 'package:medical_health_patient/model/gender.dart';
import 'package:medical_health_patient/model/patient.dart';
import 'package:medical_health_patient/pages/home_page.dart';
import 'package:medical_health_patient/patient_form_validator.dart';
import 'package:medical_health_patient/widgets/patient_form.dart';

class FormPage extends StatefulWidget {
  static Patient patient = Patient();

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  int currStep = 0;
  String day = 'Dia';
  String month = 'Mes';
  String year = 'Ano';

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
              content: PatientForm.gender(onChanged: (value) {
                setState(() {
                  PatientForm.genderState = value;
                });
              }),
              isActive: currStep == 1 ? true : false),
          Step(
              title: Text('Data de Nascimento'),
              content: PatientForm.birthDate(
                day: day,
                month: month,
                year: year,
                isDateSelected: FormPage.patient.birthDate == null,
                onTap: (){
                  DatePicker.showDatePicker(
                      context,
                      showTitleActions: true,
                      locale: 'pt-br',
                      minYear: 1970,
                      maxYear: DateTime.now().year,
                      initialYear: 1970,
                      initialMonth: 1,
                      initialDate: 1,
                      dateFormat: 'dd-mm-yyyy',
                      onChanged: (int year, int month, int day) {

                      },
                      onConfirm: (year, month, day) {
                        setState(() {
                          FormPage.patient.birthDate = DateTime(year, month, day);
                          this.day = '$day';
                          List<String> months = LocaleMessage.getLocaleMonths('pt-br');
                          this.month = months[month - 1];
                          this.year = '$year';
                        });
                      },
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
          PatientFormValidator(
              step: currStep,
              validator: (bool valid){
                if(valid){
                  print('FormField Result: ${FormPage.patient.name}');
                  setState(() {
                    if (currStep < PatientForm.fields.length - 1) {
                      currStep = currStep + 1;
                    }
                  });
                }
              }
          );
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
      ),
      persistentFooterButtons: [
        FlatButton(
          child: Text(
            'Cancelar',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.blue,
        ),
        FlatButton(
          child: Text(
            'Salvar Dados',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            PatientFormValidator(
                validator: (bool valid){
                  if(valid){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return HomePage(patient: FormPage.patient);
                    }));
                  }
                }
            );
          },
          color: Colors.blue,
        ),
      ],
    );
  }
}