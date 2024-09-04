import 'package:flutter/material.dart';
import 'package:cu/TelaQuaternaria.dart';
import 'package:cu/TelaQuinaria.dart';
import 'package:cu/TelaTerciaria.dart';
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
  bool light1 = true;
  bool light2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tela Principal! :D"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Primeira tela! :D",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20), // Espaço entre os widgets
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Telasecundaria()));
                },
                child: const Text("Ir para a segunda tela ->"),
              ),
              SizedBox(height: 10), // Espaço entre os botões
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
                          builder: (context) => TelaQuaternaria()));
                },
                child: const Text("Ir para a quarta tela ->"),
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
      ),
    );
  }
}
