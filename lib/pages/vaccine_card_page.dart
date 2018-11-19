import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

class VaccineCardPage extends StatefulWidget {
  @override
  _VaccineCardPageState createState() => _VaccineCardPageState();
}

class _VaccineCardPageState extends State<VaccineCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cartao de Vacina'),
        actions: [
          IconButton(
            onPressed: (){},
            tooltip: 'Codigo QR',
            icon: Icon(Icons.gradient),
          ),
        ],
      ),
      body: ,
    );
  }
}
