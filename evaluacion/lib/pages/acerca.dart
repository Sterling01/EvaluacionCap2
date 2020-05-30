
import 'package:evaluacion/modelo/persona.dart';
import 'package:flutter/material.dart';

class Acerca extends StatelessWidget{

  Persona persona;

  Acerca(persona){
    this.persona=persona;
  }

  Widget presentacionDatosPersonales(){
    return Padding(
        padding: const EdgeInsets.only(top:20),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Text(
                    'Cédula',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Text(
                    persona.cedula.toString(),
                    style: TextStyle(fontSize: 16.0)
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Text(
                    'Nombre',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Text(
                    persona.nombre.toString(),
                    style: TextStyle(fontSize: 16.0)
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Text(
                    'Dirección',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Text(
                    persona.direccion.toString(),
                    style: TextStyle(fontSize: 16.0)
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Text(
                    'Fecha de nacimiento',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Text(
                    persona.fechaNacimiento.toString(),
                    style: TextStyle(fontSize: 16.0)
                  ),
                ],
              ),
            ),
          ]
        )
      );
  }

  Widget botonAceptar(BuildContext context){
    return Container(
        padding: const EdgeInsets.only(top: 32),
        child: RaisedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/inicio');
          },
          textColor: Colors.white,
          color: Colors.lightBlue,
          child: Text('Aceptar')
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Datos personales'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(color: Colors.white),
        child: ListView(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'Datos personales',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Datos personales',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)
                ),
              ),
            ),
            presentacionDatosPersonales(),
            botonAceptar(context)
          ]
        ),
      ),
    );
  }

}