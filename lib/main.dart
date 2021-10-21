import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Basededatos/controller.dart';
import 'Principal/principal.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp().then((value) {
    runApp(CRUDapp());
  });
}

class CRUDapp extends StatelessWidget {
  const CRUDapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CRUD - FireBase",
      home: cudApp(),
    );
  }
}

class cudApp extends StatefulWidget {
  cudApp({Key? key}) : super(key: key);

  @override
  _cudAppState createState() => _cudAppState();
}

class _cudAppState extends State<cudApp> {
//List user = [];
  void initState() {
    super.initState();
    //InsertarUsuario();
    //getUsuarios();
   // actualizarUsuario();
    //getUsuarios();
    //borrarUsuario();
    getUsuarios();
  }

  final texto1 = TextEditingController();
  final texto2 = TextEditingController();
  final texto3 = TextEditingController();
  final texto4 = TextEditingController();
  final texto5 = TextEditingController();
  final texto6 = TextEditingController();
  final texto7 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Parcial 3'),
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            
            TextField( 
              controller: texto1,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'nombre',
              ),
            ),
            TextField(
              controller: texto2,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'correo',
              ),
            ),
            TextField(
              controller: texto3,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'nivel',
              ),
            ),
            TextField(
              controller: texto4,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'password',
              ),
            ),
            TextField(
              controller: texto5,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'avatar',
              ),
            ),
            TextField(
              controller: texto6,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'tipo',
              ),
            ),
            TextField(
              controller: texto7,
               decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'usuario',
              ),
            ),
          ],
        ),
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          InsertarUsuario(texto1.text, texto2.text, int.parse(texto3.text) ,texto4.text,texto5.text, texto6.text,texto7.text );
          texto1.text = "";
          texto2.text = "";
          texto3.text = "";
          texto4.text = "";
          texto5.text = "";
          texto6.text = "";
          texto7.text = "";
        },
        tooltip: 'Show me the value!',
        child: const Icon(Icons.ac_unit),
        backgroundColor: new Color(0xFFE57373),   
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
