import 'package:cu/TelaQuaternaria.dart';
import 'package:cu/TelaSecundaria.dart';
import 'package:cu/TelaTerciaria.dart';
import 'package:cu/main.dart';
import 'package:flutter/material.dart';

class TelaQuinaria extends StatefulWidget {
  @override
  _TelaQuinariaState createState() => _TelaQuinariaState();
}

class _TelaQuinariaState extends State<TelaQuinaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela Quinaria'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            const Text(
              "Quinta tela! :D",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TelaPrincipal()));
                },
                child: const Text("Ir para a primeira tela ->")),
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
          ],
        ),
      ),
    );
  }
}
