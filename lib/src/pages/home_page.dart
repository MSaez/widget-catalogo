import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Principal'),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text('Alertas'),
              leading: Icon(Icons.taxi_alert),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                
                Navigator.pushNamed(context, 'alerta');
              },
            ),

          ],
        ),
      )),
    );
  }
}
