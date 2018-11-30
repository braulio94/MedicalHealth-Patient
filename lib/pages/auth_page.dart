import 'package:flutter/material.dart';
import 'package:medical_health_patient/pages/login_page.dart';
import 'package:medical_health_patient/pages/register_page.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {

  PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView(
            physics: NeverScrollableScrollPhysics(),
            controller: _pageController,
            children: [
              LoginPage(),
              RegisterPage(),
            ],
          ),
          Container(
            margin: EdgeInsets.only(bottom: 50.0),
            alignment: Alignment.bottomRight,
            child: FlatButton(
              color: Colors.black54,
              child: Text(
                _pageController.initialPage == 0 ? 'Regitrar-se' : 'Entrar',
                key: ValueKey('Auth-Swicth-Button'),
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                if(_pageController.page == 1){
                  _pageController.jumpToPage(0);
                } else if(_pageController.page == 0){
                  _pageController.jumpToPage(1);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
