
import 'package:evaluacion/modelo/persona.dart';
import 'package:evaluacion/pages/acerca.dart';
import 'package:evaluacion/pages/agenda.dart';
import 'package:evaluacion/pages/inicio.dart';
import 'package:evaluacion/pages/registro.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Congreso',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/inicio': (context) => MyHomePage(title: 'Congreso'),
        '/registro': (context) => MyHomePage(title: 'Congreso'),
      },
      home: MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Persona persona=Persona();

  final _usuarioCtrl = TextEditingController();
  final _claveCtrl = TextEditingController();

  Widget datosPersonales() {
    return Padding(
        padding: const EdgeInsets.only(top:20),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Usuario',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Ingresar usuario'
                      ),
                      controller: _usuarioCtrl,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Clave',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Ingresar clave'
                      ),
                      controller: _claveCtrl,
                    ),
                  ),
                ],
              )
      );
  }

  Widget botonSiguiente(BuildContext context){
      return Container(
        padding: const EdgeInsets.only(top: 32),
        child: RaisedButton(
          onPressed: () {
            if (_usuarioCtrl.text=="admin" && _claveCtrl.text=="admin"){
              print("Bien");
              Navigator.push(context, MaterialPageRoute(builder: (context) => Registro()));  
            }else{
              print("NO");
            }
          },
          textColor: Colors.white,
          color: Colors.lightGreen,
          child: Text('Iniciar Sesion')
        ),
      );
    }

    Widget botonAgenda(BuildContext context){
      return Container(
        padding: const EdgeInsets.only(top: 32),
        child: RaisedButton(
          onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Agenda()));  
          },
          textColor: Colors.white,
          color: Colors.lightGreen,
          child: Text('Agenda')
        ),
      );
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Iniciar Sesión'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Evaluacion'),
                decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Agenda'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Agenda()));  
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Acerca de'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Acerca(persona)));  
              },
            ),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(color: Colors.white),
        child: ListView(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'Iniciar Sesión',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)
              ),
            ),
            datosPersonales(),
            botonSiguiente(context),
            //botonAgenda(context),
          ]
        ),
      ),
    );
  }
}
