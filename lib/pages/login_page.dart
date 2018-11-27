import 'package:flutter/material.dart';

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

    final loginButton = Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 50.0, vertical: 16.0),
      height: 50.0,
      child: ClipRRect(
        borderRadius: new BorderRadius.circular(50.0),
        child: MaterialButton(
            minWidth: 70.0,
            onPressed: (){
              //TODO add to cart action
            },
            color: Colors.grey[900],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Entrar', style: TextStyle(color: Colors.white)),
              ],
            )),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: [
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
            ),
          ],
        ),
      ),
    );
  }
}