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
            controller: _pageController,
            children: [
              LoginPage(),
              RegisterPage(),
            ],
          ),
          Center(
            child: FlatButton(
              child: Text(
                _pageController.initialPage == 1.0 ? 'Regitrar-se' : 'Entrar',
                style: TextStyle(color: Colors.black54),
              ),
              onPressed: () {
                _pageController.page == 1.0 ? _pageController.jumpToPage(1) : _pageController.jumpToPage(2);
              },
            ),
          ),
        ],
      ),
    );
  }
}
