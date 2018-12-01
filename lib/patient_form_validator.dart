import 'package:medical_health_patient/common/keys.dart';
import 'package:medical_health_patient/model/filiation.dart';
import 'package:medical_health_patient/model/location.dart';
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
        if(Keys.nameFormKey.currentState.validate()){
          String name = Keys.nameFormFieldKey.currentState.value;
          FormPage.patient.name = name;
          if(Keys.nameFocusNode.hasFocus){
            Keys.nameFocusNode.unfocus();
          }
          validator(true);
        }
        break;
      case 1:
        FormPage.patient.sex = PatientForm.genderState.index;
        validator(true);
        break;
      case 2:
        if(FormPage.patient.birthDate != null){
          validator(true);
        }
        break;
      case 3:
        if(Keys.parentFormKey.currentState.validate()){
          String fatherName = Keys.fatherFormFieldKey.currentState.value;
          String motherName = Keys.motherFormFieldKey.currentState.value;
          FormPage.patient.filiation = Filiation(father: fatherName, mother: motherName);
          if(Keys.filiationMotherNode.hasFocus){
            Keys.filiationMotherNode.unfocus();
          }
          if(Keys.filiationFatherNode.hasFocus){
            Keys.filiationFatherNode.unfocus();
          }
          validator(true);
        }
        break;
      case 4:
        if(Keys.locationFormKey.currentState.validate()){
          String districtName = Keys.districtFormFieldKey.currentState.value;
          String streetName = Keys.streetFormFieldKey.currentState.value;
          String houseNumber = Keys.houseNumberFormFieldKey.currentState.value;
          FormPage.patient.location = Location(
              province: PatientForm.provinceName,
              municipality: PatientForm.municipalityName,
              district: districtName,
              street: streetName,
              number: houseNumber,
          );
          if(Keys.districtFocusNode.hasFocus){
            Keys.districtFocusNode.unfocus();
          }
          if(Keys.streetFocusNode.hasFocus){
            Keys.streetFocusNode.unfocus();
          }
          if(Keys.houseNumberFocusNode.hasFocus){
            Keys.houseNumberFocusNode.unfocus();
          }
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
        } else {

        }
    }
  }
}