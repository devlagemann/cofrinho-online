import 'package:flutter/material.dart';
import 'guardar.dart';
import 'tesouro.dart';
import 'retirar.dart';
void main() {
  runApp(MaterialApp(home: MyApp(), debugShowCheckedModeBanner: false));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  dynamic quantia = 0;

  int indiceAtual = 0;

  List telas = [
    Guardar(),
    Tesouro(),
    Retirar(),
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.animation),
            title: Text('Cofrinho Online'),
          backgroundColor: Colors.lightGreen,
        ),
        body: telas[indiceAtual],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.w300),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
          currentIndex: indiceAtual,
          onTap: clicar,
          backgroundColor: Colors.lightGreen,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.attach_money, color: Colors.white),
                label: 'Guardar'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.monetization_on, color: Colors.white),
                label: 'Tesouro'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.real_estate_agent_outlined, color: Colors.white),
                label: 'Retirar'
            )
          ],
        ),

      ),
    );
  }
  void clicar(int index){
    setState(() {
      indiceAtual = index;
    });
  }
}

