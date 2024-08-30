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
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela Quinária'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Quinta tela! :D",
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
                          builder: (context) => TelaQuaternaria()));
                },
                child: const Text("Ir para a quarta tela ->"),
              ),
              SizedBox(height: 20),
              Slider(
                value: _currentSliderValue,
                max: 100,
                divisions: 5,
                label: _currentSliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
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
