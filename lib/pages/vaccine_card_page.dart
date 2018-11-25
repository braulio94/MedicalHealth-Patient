import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:medical_health_patient/data/data.dart';
import 'package:medical_health_patient/pages/qr_code_viewer_page.dart';
import 'package:medical_health_patient/widgets/vaccine_interval.dart';

class VaccineCardPage extends StatefulWidget {
  @override
  _VaccineCardPageState createState() => _VaccineCardPageState();
}

class _VaccineCardPageState extends State<VaccineCardPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Cartao de Vacina'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context){
                  return QRCodeViewerPage();
                }
              ));
            },
            tooltip: 'Codigo QR',
            icon: Icon(Icons.gradient),
          ),
        ],
      ),
      body: new Builder(builder: (BuildContext context) {
        return new CustomScrollView(
          slivers: vaccines.map((vaccine){
            return SliverStickyHeader(
              header: Container(
                height: 60.0,
                color: Colors.lightBlue,
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      vaccine.name,
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                    new Text(
                      vaccine.abr,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              sliver: SliverToBoxAdapter(
                child: SizedBox(
                  height: 300.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: vaccine.intervals.length,
                    itemBuilder: (context, index){
                      return VaccineInterval(interval: vaccine.intervals[index], color: vaccine.color);
                    },
                  ),
                ),
              ),
            );
          }).toList()
        );
      }),
    );
  }
}