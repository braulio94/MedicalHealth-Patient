import 'package:medical_health_patient/pages/form_page.dart';
import 'package:medical_health_patient/widgets/patient_form.dart';

class PatientFormValidator {

  final int step;
  final Function(bool valid) validator;

  PatientFormValidator({
    this.step,
    this.validator
  }) {
    _validation();
  }

  void _validation(){
    switch(step){
      case 0:
        if(PatientForm.nameFormKey.currentState.validate()){
          String name = PatientForm.nameFormFieldKey.currentState.value;
          FormPage.patient.copyWith(name: name);
          validator(true);
        }
        break;
      case 1:
        FormPage.patient.copyWith(sex: PatientForm.genderState.index);
        validator(true);
        break;
      case 2:
        if(FormPage.patient.birthDate != null){
          validator(true);
        }
        break;
      default:
        if(FormPage.patient.name != null &&
            FormPage.patient.birthDate != null &&
            FormPage.patient.filiation != null &&
            FormPage.patient.location != null &&
            FormPage.patient.phoneNumber != null ){
          validator(true);
        }
    }
  }
}