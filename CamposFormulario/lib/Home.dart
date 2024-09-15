import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:brasil_fields/brasil_fields.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _cpfController = TextEditingController();
  String _valorRecuperado = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Entrada de Dados"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            TextField(
              controller: _cpfController,
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                CpfInputFormatter(),
              ],
              decoration: InputDecoration(
                hintText: "Digite o CPF",
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text("Recuperar Valor"),
              onPressed: () {
                setState(() {
                  _valorRecuperado = _cpfController.text.toString();
                });
              },
            ),
            SizedBox(height: 20),
            Text(
              "Valor: $_valorRecuperado",
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
