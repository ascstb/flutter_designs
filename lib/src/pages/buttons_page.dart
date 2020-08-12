import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_designs/src/utils/util.dart';

class ButtonsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _appBackground(),
          SingleChildScrollView(
            child: Column(
              children: [
                _titles(),
                _roundedButtons(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: bottomNavigationBar(context, 2),
    );
  }

  Widget _appBackground() {
    final gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.6),
              end: FractionalOffset(0.0, 1.0),
              colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ])),
    );

    final cajaRosa = Transform.rotate(
        angle: -pi / 5.0,
        child: Container(
          height: 360.0,
          width: 360.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80.0),
              gradient: LinearGradient(
                  begin: FractionalOffset(0.0, 0.6),
                  end: FractionalOffset(0.0, 1.0),
                  colors: [
                    Color.fromRGBO(236, 98, 188, 1.0),
                    Color.fromRGBO(241, 142, 172, 1.0)
                  ])),
        ));

    return Stack(children: <Widget>[
      gradient,
      Positioned(
        top: -100.0,
        child: cajaRosa,
      )
    ]);
  }

  Widget _titles() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Classify Transaction',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text('Classify this Transaction into a particular category',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                )),
          ],
        ),
      ),
    );
  }

  Widget _roundedButtons() {
    return Table(
      children: [
        TableRow(children: [
          _createRoundButton(Colors.blue, Icons.border_all, 'General'),
          _createRoundButton(Colors.pink, Icons.brush, 'Paint')
        ]),
        TableRow(children: [
          _createRoundButton(Colors.green, Icons.money_off, 'Money'),
          _createRoundButton(Colors.orange, Icons.map, 'Map')
        ]),
        TableRow(children: [
          _createRoundButton(Colors.red, Icons.lightbulb_outline, 'Bulb'),
          _createRoundButton(Colors.purple, Icons.graphic_eq, 'Graphic')
        ]),
        TableRow(children: [
          _createRoundButton(Colors.cyan, Icons.satellite, 'Satellite'),
          _createRoundButton(Colors.amber, Icons.alarm, 'Alarm')
        ]),
      ],
    );
  }

  Widget _createRoundButton(Color color, IconData icon, String text) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20.0)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 5.0,
              ),
              CircleAvatar(
                backgroundColor: color,
                radius: 35.0,
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
              Text(text, style: TextStyle(color: color)),
              SizedBox(
                height: 5.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
