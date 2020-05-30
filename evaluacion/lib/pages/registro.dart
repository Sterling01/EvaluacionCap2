import 'package:evaluacion/modelo/persona.dart';
import 'package:evaluacion/pages/acerca.dart';
import 'package:evaluacion/pages/agenda.dart';
import 'package:flutter/material.dart';

class Registro extends StatelessWidget{

    Persona persona=Persona();
  
    final _cedulaCtrl = TextEditingController();
    final _nombreCtrl = TextEditingController();
    final _direccionCtrl = TextEditingController();
    final _fechaNacCtrl = TextEditingController();
  
    //Key Formulario
    final _formKey = GlobalKey<FormState>();

    //Guardar datos
    void _saveData(BuildContext context){
      if(_formKey.currentState.validate()){
        _formKey.currentState.save();
      }
    }

    Widget datosPersonales() {
    return Padding(
      padding: const EdgeInsets.only(top:20),
      child: Column(
        children: [
          Form(
            key: _formKey,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                  'Número de cédula',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Ingresar cédula'
                    ),
                    controller: _cedulaCtrl,
                    validator: (value){
                      if (value.isEmpty) return "Ingrese su cedula";
                    },
                    onSaved: (newValue)  => persona.cedula = newValue,
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Nombre',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)
                  )
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Ingresar nombre'
                    ),
                    controller: _nombreCtrl,
                    validator: (value){
                      if (value.isEmpty) return "Ingrese su nombre";
                    },
                    onSaved: (newValue)  => persona.nombre = newValue,
                  )
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Dirección',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)
                  )
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Ingresar dirección'
                    ),
                    controller: _direccionCtrl,
                    validator: (value){
                      if (value.isEmpty) return "Ingrese su dirección";
                    },
                    onSaved: (newValue)  => persona.direccion = newValue,
                  )
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Fecha de nacimiento',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)
                  )
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Ingresar fecha de nacimiento'
                    ),
                    controller: _fechaNacCtrl,
                    validator: (value){
                      if (value.isEmpty) return "Ingrese su fecha de nacimiento";
                    },
                    onSaved: (newValue)  => persona.fechaNacimiento = newValue,
                  )
                ),
              ],
            ),
          ),
        ],
      )
    );
  }

  Widget bottonSiguiente(BuildContext context){
    return Container(
      padding: const EdgeInsets.only(top: 32),
      child: RaisedButton(
        onPressed: () {
          _saveData(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) => Agenda()));  
            //Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));  
        },
        textColor: Colors.white,
        color: Colors.lightGreen,
        child: Text('Agenda')
      ),
    );
  }

  Widget bottonDatos(BuildContext context){
    return Container(
      padding: const EdgeInsets.only(top: 32),
      child: RaisedButton(
        onPressed: () {
          _saveData(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) => Acerca(persona)));  
            //Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));  
        },
        textColor: Colors.white,
        color: Colors.lightGreen,
        child: Text('Datos personales')
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Datos Personales'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(color: Colors.white),
        child: ListView(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'Hoja de vida',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)
              ),
            ),
            datosPersonales(),
            bottonSiguiente(context),
            bottonDatos(context)
          ]
        ),
      ),
    );
  }

}
