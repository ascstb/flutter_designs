import 'package:flutter/material.dart';
import 'package:flutter_designs/src/pages/basico_page.dart';
import 'package:flutter_designs/src/pages/botones_page.dart';
import 'package:flutter_designs/src/pages/scroll_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Designs',
      initialRoute: 'buttons',
      routes: {
        'basic': (BuildContext context) => BasicoPage(),
        'scroll': (BuildContext context) => ScrollPage(),
        'buttons': (BuildContext context) => BotonesPage(),
      },
    );
  }
}
