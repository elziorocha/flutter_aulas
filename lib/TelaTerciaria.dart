import 'package:cu/TelaQuaternaria.dart';
import 'package:cu/TelaQuinaria.dart';
import 'package:cu/TelaSecundaria.dart';
import 'package:cu/main.dart';
import 'package:flutter/material.dart';

class TelaTerciaria extends StatefulWidget {
  @override
  _TelaTerciariaState createState() => _TelaTerciariaState();
}

class _TelaTerciariaState extends State<TelaTerciaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela Terciária'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            const Text(
              "Terceira tela! :D",
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
            ElevatedButton(
                child: const Text('APAREÇA DAS TREVAS'),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: const Text('mt foda gostei'),
                    action: SnackBarAction(
                      label: 'Action',
                      onPressed: () {
                        // Code to execute.
                      },
                    ),
                  ));
                })
          ],
        ),
      ),
    );
  }
}
