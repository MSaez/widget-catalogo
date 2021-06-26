import 'package:flutter/material.dart';
import 'package:widget_catalogo/src/pages/alert_page.dart';
import 'package:widget_catalogo/src/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        // context, sirve para saber en que lugar o posicion de la aplicacion.
        '/': (BuildContext context) => HomePage(),
        'alerta': (BuildContext context) => AlertPage(),
      },
    );
  }
}

