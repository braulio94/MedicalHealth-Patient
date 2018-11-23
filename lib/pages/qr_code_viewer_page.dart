import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRCodeViewerPage extends StatelessWidget {
  String _dataString = "Cartao de Vacina - Identificador";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Meu Codigo QR'),
      ),
      body: Container(
        margin: EdgeInsets.all(16.0),
        child: Center(
          child: QrImage(
            data: _dataString,
            onError: (ex) {},
          ),
        ),
      ),
      resizeToAvoidBottomPadding: true,
    );
  }
}
