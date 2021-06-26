import 'package:flutter/material.dart';
class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final elevatedButtonStyle = ElevatedButton.styleFrom(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))
      )
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Alertas'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Presione aqui'),
          onPressed: ()=>this._mostrarAlerta(context),
          style: elevatedButtonStyle,
        ),
      ),
    );
  }

  void _mostrarAlerta(BuildContext context){
    showDialog(
      context: context, 
      barrierDismissible: false,
      builder: (context){
        return AlertDialog(
          title: Text('Titulo Alerta'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Contenido alerta'),
              FlutterLogo(
                size: 100,
              )
            ],
          ),
          actions: [
            TextButton( 
              child: Text('Cancelar'),
              onPressed: ()=> Navigator.pop(context),
            ),
            TextButton( 
              child: Text('Aceptar'),
              onPressed: ()=> Navigator.pop(context),
            )
          ],

        );
      }
    );
  }
}