import 'package:evaluacion/modelo/persona.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Inicio extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Acerca De'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(color: Colors.white),
        child: ListView(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'Acerca De',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'App Hoja de vida que permite ingresar informacion personal para generar al final un documento con la información ingresada',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)
              ),
            ),
          ]
        ),
      ),
    );
  }

}