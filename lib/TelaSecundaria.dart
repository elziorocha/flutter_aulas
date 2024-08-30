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
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            const Text(
              "Segunda tela! :D",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaPrincipal())
                );
              },
              child: const Text("Ir para a primeira tela ->"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaTerciaria())
                );
              },
              child: const Text("Ir para a terceira tela ->"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaQuaternaria())
                );
              },
              child: const Text("Ir para a quarta tela ->"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaQuinaria())
                );
              },
              child: const Text("Ir para a quinta tela ->"),
            ),
            ElevatedButton(
              onPressed: () {
                _showMyDialog();
              },
              child: const Text("Mostrar Dialogo ->"),
            ),
          ],
        ),
      ),
    );
  }
}
