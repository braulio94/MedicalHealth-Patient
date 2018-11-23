import 'package:flutter/material.dart';
import 'package:medical_health_patient/data/data.dart';
import 'package:medical_health_patient/model/gender.dart';

class PatientForm extends StatelessWidget {

  static final List<String> fields = [
    'Nome',
    'Data de Nascimento',
    'Sexo',
    'Nacionalidade',
    'Afiliacao',
    'Morada',
    'Numero de telefone'
  ];

  final Widget content;
  final FocusNode focusNode;

  PatientForm.name({this.focusNode}) : content = TextFormField(
    focusNode: focusNode,
    keyboardType: TextInputType.text,
    autocorrect: false,
    onSaved: (String value) {

    },
    maxLines: 1,
    validator: (value) {
      if (value.isEmpty || value.length < 1) {
        return 'Escreve teu nome';
      }
    },
    decoration: InputDecoration(
        hintText: 'Nome completo',
        labelStyle:
        TextStyle(decorationStyle: TextDecorationStyle.solid)),
  );

  PatientForm.birthDate({this.focusNode}) : content = Container(

  );

  PatientForm.gender({this.focusNode, Gender gender}) : content = Container(
    child: Column(
      children: <Widget>[
        RadioListTile<Gender>(
          title: Text('Maculinno'),
          value: Gender.Male,
          groupValue: gender,
          onChanged: (value) {

          },
        ),
        RadioListTile<Gender>(
          title: Text('Feminino'),
          value: Gender.Female,
          groupValue: gender,
          onChanged: (value) {

          },
        ),
      ],
    )
  );

  PatientForm.location({this.focusNode}) : content = Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        DropdownButtonFormField(
          items: provinces.map((province){
            return DropdownMenuItem(
              child: Text(province),
            );
          }).toList(),
        ),
        DropdownButtonFormField(
          items: [
            DropdownMenuItem(
              child: Text('Municipio'),
            ),
            DropdownMenuItem(
              child: Text('Kilamba Kiaxi'),
            ),
          ],
        ),
        TextFormField(
          keyboardType: TextInputType.text,
          autocorrect: false,
          onSaved: (String value) {

          },
          maxLines: 1,
          validator: (value) {
            if (value.isEmpty || value.length < 1) {
              return 'Escreve o distrito';
            }
          },
          decoration: InputDecoration(
              hintText: 'Distrito',
              labelStyle:
              TextStyle(decorationStyle: TextDecorationStyle.solid)),
        ),
        TextFormField(
          keyboardType: TextInputType.text,
          autocorrect: false,
          onSaved: (String value) {

          },
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
  );

  PatientForm.filiation({this.focusNode}) : content = Container(
    child: Column(
      children: filiation.map((parent){
        return Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: TextFormField(
                focusNode: focusNode,
                keyboardType: TextInputType.text,
                autocorrect: false,
                onSaved: (String value) {

                },
                maxLines: 1,
                validator: (value) {
                  if (value.isEmpty || value.length < 1) {
                    return 'Escreve o nome';
                  }
                },
                decoration: InputDecoration(
                    hintText: 'Nome completo $parent',
                    labelStyle:
                    TextStyle(decorationStyle: TextDecorationStyle.solid)),
              ),
            ),
          ],
        );
      }).toList(),
    ),
  );

  PatientForm.phoneNumber({this.focusNode}) : content = Container(
    child: TextFormField(
      focusNode: focusNode,
      keyboardType: TextInputType.number,
      autocorrect: false,
      onSaved: (String value) {

      },
      maxLines: 1,
      validator: (value) {
        if (value.isEmpty || value.length < 1) {
          return 'Escreve o numero de telefone';
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