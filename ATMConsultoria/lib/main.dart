import 'package:flutter/material.dart';
import 'Home.dart';

void main() {
  runApp(ATMConsultoriaApp());
}

class ATMConsultoriaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ATM Consultoria',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
