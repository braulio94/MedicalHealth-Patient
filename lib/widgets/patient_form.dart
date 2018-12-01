import 'package:flutter/material.dart';
import 'package:medical_health_patient/common/keys.dart';
import 'package:medical_health_patient/data/data.dart';
import 'package:medical_health_patient/model/gender.dart';

class PatientForm extends StatelessWidget {

  static final List<String> fields = [
    'Nome',
    'Data de Nascimento',
    'Sexo',
    'Afiliacao',
    'Morada',
    'Numero de telefone'
  ];

  final Widget content;
  static Gender genderState = Gender.Male;
  static String provinceName = 'Selecine provincia';
  static String municipalityName = 'Selecine municipio';

  PatientForm.name() : content = Form(
    key: Keys.nameFormKey,
      autovalidate: true,
      child: TextFormField(
        key: Keys.nameFormFieldKey,
        keyboardType: TextInputType.text,
        focusNode: Keys.nameFocusNode,
        autocorrect: false,
        onSaved: (String value) {

        },
        maxLines: 1,
        validator: (value) {
          if (value.isEmpty || value.length < 1) {
            return 'Campo nao pode estar vasio';
          } else if (value.contains(new RegExp(r'[1-9]'))){
            return 'Nao pode conter numeros';
          } else if(value.contains(',') | value.contains('/') | value.contains('.') | value.contains(';')){
            return 'Nao pode conter simbolos';
          }
        },
        decoration: InputDecoration(
            hintText: 'Nome completo',
            labelStyle:
            TextStyle(decorationStyle: TextDecorationStyle.solid)),
      ));

  PatientForm.birthDate({VoidCallback onTap, String day, String month, String year, bool isDateSelected}) : content = Container(
    child: GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                decoration: BoxDecoration(
                  border: Border(top: BorderSide(color: Colors.black54), bottom: BorderSide(color: Colors.black54)),
                ),
                  child: Text(day),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
                margin: EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  border: Border(top: BorderSide(color: Colors.black54), bottom: BorderSide(color: Colors.black54)),
                ),
                child: Text(month),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                decoration: BoxDecoration(
                  border: Border(top: BorderSide(color: Colors.black54), bottom: BorderSide(color: Colors.black54)),
                ),
                child: Text(year),
              ),
            ],
          ),
          isDateSelected ? Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text('Selecione uma data', style: TextStyle(fontSize: 11, color: Colors.red)),
          ) : Container(),
        ],
      ),
    ),
  );

  PatientForm.gender({ValueChanged<Gender> onChanged}) : content = Container(
    child: Column(
      children: <Widget>[
        RadioListTile<Gender>(
          title: Text('Maculinno'),
          value: Gender.Male,
          groupValue: genderState,
          onChanged: onChanged,
        ),
        RadioListTile<Gender>(
          title: Text('Feminino'),
          value: Gender.Female,
          groupValue: genderState,
          selected: genderState == Gender.Female ? true : false,
          onChanged: onChanged,
        ),
      ],
    )
  );

  PatientForm.location(int provinceMunicipalityIndex, {ValueChanged<String> onProvinceSelected, ValueChanged<String> onMunicipalitySelected}) : content = Container(
    child: Form(
      key: Keys.locationFormKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          DropdownButtonFormField<String>(
            onSaved: onProvinceSelected,
            onChanged: onProvinceSelected,
            hint: Text(provinceName, style: TextStyle(color: Colors.black)),
            validator: (String value){
              if(value == null){
                return 'Seleciona uma provincia';
              }
            },
            items: provinces.map((province){
              return DropdownMenuItem<String>(
                value: province,
                child: Text(province),
              );
            }).toList(),
          ),
          DropdownButtonFormField<String>(
            hint: Text(municipalityName, style: TextStyle(color: Colors.black)),
            onChanged: onMunicipalitySelected,
            onSaved: onMunicipalitySelected,
            validator: (value){
              if(value == null || value == 'Selecionar Municipio'){
              return 'Seleciona um Municipio';
              }
            },
            items: provinceMunicipalityIndex == -1 ? [] : provinceMunicipalitiesList[provinceMunicipalityIndex].map((municipality){
              return DropdownMenuItem(
                value: municipality,
                child: Text(municipality),
              );
            }).toList()
          ),
          TextFormField(
            key: Keys.districtFormFieldKey,
            focusNode: Keys.districtFocusNode,
            keyboardType: TextInputType.text,
            autocorrect: false,
            maxLines: 1,
            validator: (value) {
              if (value.isEmpty || value.length < 1) {
                return 'Escreve o bairro';
              }
            },
            decoration: InputDecoration(
                hintText: 'Bairro',
                labelStyle:
                TextStyle(decorationStyle: TextDecorationStyle.solid)),
          ),
          TextFormField(
            key: Keys.streetFormFieldKey,
            focusNode: Keys.streetFocusNode,
            keyboardType: TextInputType.text,
            autocorrect: false,
            maxLines: 1,
            validator: (value) {
              if (value.isEmpty || value.length < 1) {
                return 'Escreve o nome da rua';
              }
            },
            decoration: InputDecoration(
                hintText: 'Rua',
                labelStyle:
                TextStyle(decorationStyle: TextDecorationStyle.solid)),
          ),
          TextFormField(
            key: Keys.houseNumberFormFieldKey,
            focusNode: Keys.houseNumberFocusNode,
            keyboardType: TextInputType.number,
            autocorrect: false,
            onSaved: (String value) {

            },
            maxLines: 1,
            validator: (value) {
              if (value.isEmpty || value.length < 1) {
                return 'Escreve o numero da casa';
              }
            },
            decoration: InputDecoration(
                hintText: 'Numero da casa',
                labelStyle:
                TextStyle(decorationStyle: TextDecorationStyle.solid)),
          ),
        ],
      ),
    ),
  );

  PatientForm.filiation() : content = Container(
    child: Form(
      key: Keys.parentFormKey,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            child: TextFormField(
              key: Keys.fatherFormFieldKey,
              focusNode: Keys.fatherFocusNode,
              keyboardType: TextInputType.text,
              autocorrect: false,
              onSaved: (String value) {

              },
              maxLines: 1,
              validator: (value) {
                if (value.isEmpty || value.length < 1) {
                  return 'Campo nao pode estar vasio';
                } else if (value.contains(new RegExp(r'[1-9]'))){
                  return 'Nao pode conter numeros';
                } else if(value.contains(',') | value.contains('/') | value.contains('.') | value.contains(';')){
                  return 'Nao pode conter simbolos';
                }
              },
              decoration: InputDecoration(
                  hintText: 'Nome completo do pai',
                  labelStyle:
                  TextStyle(decorationStyle: TextDecorationStyle.solid)),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            child: TextFormField(
              key: Keys.motherFormFieldKey,
              focusNode: Keys.motherFocusNode,
              keyboardType: TextInputType.text,
              autocorrect: false,
              onSaved: (String value) {

              },
              maxLines: 1,
              validator: (value) {
                if (value.isEmpty || value.length < 1) {
                  return 'Campo nao pode estar vasio';
                } else if (value.contains(new RegExp(r'[1-9]'))){
                  return 'Nao pode conter numeros';
                } else if(value.contains(',') | value.contains('/') | value.contains('.') | value.contains(';')){
                  return 'Nao pode conter simbolos';
                }
              },
              decoration: InputDecoration(
                  hintText: 'Nome completo da mae',
                  labelStyle:
                  TextStyle(decorationStyle: TextDecorationStyle.solid)),
            ),
          ),
        ],
      ),
    ),
  );

  PatientForm.phoneNumber() : content = Container(
    child: TextFormField(
      key: Keys.phoneNumberFormFieldKey,
      focusNode: Keys.phoneNumberFocusNode,
      keyboardType: TextInputType.number,
      autocorrect: false,
      maxLines: 1,
      validator: (value) {
        if (value.isEmpty || value.length < 1) {
          return 'Escreve o numero de telefone';
        } else if (value.contains(new RegExp(r'[A-Z]'))){
          return 'Nao pode conter letras';
        }
      },
      decoration: InputDecoration(
          hintText: 'Numero de telefone',
          labelStyle:
          TextStyle(decorationStyle: TextDecorationStyle.solid)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return content;
  }
}