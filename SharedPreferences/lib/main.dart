import 'package:flutter/material.dart';
import 'Home.dart';

String _textoSalvo = "Nada Salvo";

void main() {
  runApp(Inicio());
}

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _textoSalvo,
      theme: ThemeData(brightness: Brightness.light),
      home: Home(),
    );
  }
}
