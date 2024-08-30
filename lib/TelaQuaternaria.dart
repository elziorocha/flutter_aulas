import 'package:cu/TelaQuinaria.dart';
import 'package:cu/TelaSecundaria.dart';
import 'package:cu/TelaTerciaria.dart';
import 'package:cu/main.dart';
import 'package:flutter/material.dart';

class TelaQuaternaria extends StatefulWidget {
  @override
  _TelaQuaternariaState createState() => _TelaQuaternariaState();
}

class _TelaQuaternariaState extends State<TelaQuaternaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela Quaternária'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Quarta tela! :D",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20), // Espaço entre o texto e o primeiro botão
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TelaPrincipal()));
                },
                child: const Text("Ir para a primeira tela ->"),
              ),
              SizedBox(height: 10), // Espaço entre os botões
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Telasecundaria()));
                },
                child: const Text("Ir para a segunda tela ->"),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TelaTerciaria()));
                },
                child: const Text("Ir para a terceira tela ->"),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TelaQuinaria()));
                },
                child: const Text("Ir para a quinta tela ->"),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: const Text('APAREÇA DAS TREVAS'),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: const Text('mt foda gostei'),
                    action: SnackBarAction(
                      label: 'não.',
                      onPressed: () {
                        // Code to execute.
                      },
                    ),
                  ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
