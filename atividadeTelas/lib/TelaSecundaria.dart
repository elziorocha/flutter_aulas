import 'package:flutter/material.dart';
import 'package:cu/TelaQuaternaria.dart';
import 'package:cu/TelaQuinaria.dart';
import 'package:cu/TelaTerciaria.dart';
import 'package:cu/main.dart';

class Telasecundaria extends StatefulWidget {
  @override
  _TelaSecundariaState createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<Telasecundaria> {

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('SOPA DE RABANETE?'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('DIÁLOGO IMPORTANTE'),
                Text('Sopa de rabanete?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Gosto'),
              onPressed: () {
                Navigator.of(context).pop();
                // Adicione a lógica para quando o usuário escolher 'Gosto' aqui
              },
            ),
            TextButton(
              child: const Text('Não gosto'),
              onPressed: () {
                Navigator.of(context).pop();
                // Adicione a lógica para quando o usuário escolher 'Não gosto' aqui
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela Secundária'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Segunda tela! :D",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20), // Espaço entre o texto e o primeiro botão
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TelaPrincipal()),
                  );
                },
                child: const Text("Ir para a primeira tela ->"),
              ),
              SizedBox(height: 10), // Espaço entre os botões
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TelaTerciaria()),
                  );
                },
                child: const Text("Ir para a terceira tela ->"),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TelaQuaternaria()),
                  );
                },
                child: const Text("Ir para a quarta tela ->"),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TelaQuinaria()),
                  );
                },
                child: const Text("Ir para a quinta tela ->"),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  _showMyDialog();
                },
                child: const Text("Mostrar Dialogo ->"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
