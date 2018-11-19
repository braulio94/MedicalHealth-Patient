import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

class VaccineCardPage extends StatefulWidget {
  @override
  _VaccineCardPageState createState() => _VaccineCardPageState();
}

class _VaccineCardPageState extends State<VaccineCardPage> {
  @override
  Widget build(BuildContext context) {
    int i = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text('Cartao de Vacina'),
        actions: [
          IconButton(
            onPressed: () {},
            tooltip: 'Codigo QR',
            icon: Icon(Icons.gradient),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: List.generate(i += 10, (sliverIndex) {
          sliverIndex += i;
          return SliverStickyHeader(
            overlapsContent: true,
            header: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: new SizedBox(
                  height: 50.0,
                  width: 90.0,
                  child: new Text('Vaccina #$sliverIndex',
                      textAlign: TextAlign.right),
                ),
              ),
            ),
            sliver: SliverPadding(
              padding: EdgeInsets.only(left: 100.0),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 4.0,
                    childAspectRatio: 1.0),
                delegate: SliverChildBuilderDelegate(
                  (context, i) => Container(),
                  childCount: 12,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
