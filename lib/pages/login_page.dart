import 'package:flutter/material.dart';
import 'package:medical_health_patient/pages/form_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Palavra-passa',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginButton = MaterialButton(
      padding: EdgeInsets.symmetric(horizontal: 100.0),
      minWidth: 100.0,
      height: 42.0,
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(
            builder: (context){
             return FormPage();
            }
        ));
      },
      color: Colors.lightBlueAccent,
      child: Text('Entrar', style: TextStyle(color: Colors.white)),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            Text('Medical Health - Patient'),
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            FlatButton(
              child: Text(
                'Esqueceu palavra-passa?',
                style: TextStyle(color: Colors.black54),
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}