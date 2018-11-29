import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.only(left: 24.0, right: 24.0),
        children: <Widget>[
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            autofocus: false,
            decoration: InputDecoration(
              hintText: 'Email',
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
            ),
          ),
          SizedBox(height: 8.0),
          TextFormField(
            autofocus: false,
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Nova palavra-passa',
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
            ),
          ),
          SizedBox(height: 8.0),
          TextFormField(
            autofocus: false,
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Confirmar palavra-passa',
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
            ),
          ),
          SizedBox(height: 24.0),
          Container(
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
                      Text('Registrar', style: TextStyle(color: Colors.white)),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}