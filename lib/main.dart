import 'package:cu/TelaQuaternaria.dart';
import 'package:cu/TelaQuinaria.dart';
import 'package:cu/TelaTerciaria.dart';
import 'package:flutter/material.dart';
import 'package:cu/TelaSecundaria.dart';

void main() {
  runApp(MaterialApp(
    home: TelaPrincipal(),
  ));
}

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  bool light1 = true;
  bool light2 = true;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tela Principal! :D"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            const Text(
              "Primeira tela! :D",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Telasecundaria()));
                },
                child: const Text("Ir para a segunda tela ->")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TelaTerciaria()));
                },
                child: const Text("Ir para a terceira tela ->")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TelaQuaternaria()));
                },
                child: const Text("Ir para a quarta tela ->")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TelaQuinaria()));
                },
                child: const Text("Ir para a quinta tela ->")),
            Switch(
              value: light1,
              onChanged: (bool value) {
                setState(() {
                  light1 = value;
                });
              },
            ),
            Switch(
              value: light2,
              onChanged: (bool value) {
                setState(() {
                  light2 = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
