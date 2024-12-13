import 'package:flutter/material.dart';

void main() {
  runApp(Tesouro());
}

class Tesouro extends StatefulWidget {
  @override
  State<Tesouro> createState() => _TesouroState();
}

class _TesouroState extends State<Tesouro> {
  bool showImage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    showImage = !showImage;
                  });
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.lightGreen),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                    TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.03,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Clique aqui para ver o seu tesouro',
                      overflow: TextOverflow.fade,
                      softWrap: true,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.card_travel),
                    )
                  ],
                ),
              ),
            ),
            if (showImage)
              Center(
                child:
                Container(
                  child: Text(
                    'nada ainda'
                  ),

                  ),
                ),
          ],
        ),
      ),
    );
  }
}
