import 'package:flutter/material.dart';

class Agenda extends StatelessWidget{

  Widget presentacionTrabajo1(){
    return Padding(
        padding: const EdgeInsets.only(top:20),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Text(
                    'Titulo',
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
                    "Congreso robotica",
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
                    'Descripcion',
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
                    "Congreso para las universidades",
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
                    'Fecha',
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
                    "05/05/2020",
                    style: TextStyle(fontSize: 16.0)
                  ),
                ],
              ),
            ),
          ]
        )
      );
  }

  Widget presentacionTrabajo3(){
    return Padding(
        padding: const EdgeInsets.only(top:20),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Text(
                    'Titulo',
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
                    "Congreso computacion",
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
                    'Descripcion',
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
                    "Congreso sobre ciencias de la computacion",
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
                    'Fecha',
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
                    "12/12/2020",
                    style: TextStyle(fontSize: 16.0)
                  ),
                ],
              ),
            ),
          ]
        )
      );
  }

  Widget presentacionTrabajo2(){
    return Padding(
        padding: const EdgeInsets.only(top:20),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Text(
                    'Titulo',
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
                    "Congreso comunicación",
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
                    'Descripcion',
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
                    "Congreso sobre entrevistas",
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
                    'Fecha',
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
                    "10/10/2020",
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
        title: Text('Agenda'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(color: Colors.white),
        child: ListView(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'Agenda',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Congreso 1',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)
                ),
              ),
            ),
            presentacionTrabajo1(),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Congreso 2',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)
                ),
              ),
            ),
            presentacionTrabajo2(),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Congreso 3',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)
                ),
              ),
            ),
            presentacionTrabajo3(),
            botonAceptar(context)
          ]
        ),
      ),
    );
  }

}