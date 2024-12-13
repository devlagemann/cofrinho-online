import 'package:flutter/material.dart';

class Guardar extends StatefulWidget {
  @override
  State<Guardar> createState() => _GuardarState();
}

class _GuardarState extends State<Guardar> {
  final TextEditingController _quantiaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: Form(
        child: Container(
          margin: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 5),
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 5),
                padding: EdgeInsets.all(80),
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  'Qual a quantia a ser guardada?',
                  style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: _quantiaController, // Controlador para capturar o valor
                  cursorColor: Colors.lightGreen,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightGreen, width: 2.0),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightGreen, width: 2.0),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightGreen, width: 2.0),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    labelText: 'RS:',
                    labelStyle: TextStyle(color: Colors.lightGreen),
                  ),
                  keyboardType: TextInputType.number, // Aceitar apenas números
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 5),
                padding: EdgeInsets.all(30),
                child: ElevatedButton(
                  onPressed: () {
                    String quantia = _quantiaController.text; // Captura o valor digitado
                    // Exibe uma notificação com o valor
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Quantia guardada: R\$ $quantia"),
                        duration: Duration(seconds: 3),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightGreen,
                    onPrimary: Colors.black,
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.monetization_on_rounded, color: Colors.white),
                      Text('Guardar', style: TextStyle(fontSize: 30.0, color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _quantiaController.dispose(); // Libera o controlador quando não for mais necessário
    super.dispose();
  }
}
