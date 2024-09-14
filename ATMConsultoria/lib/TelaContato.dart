import 'package:flutter/material.dart';

class TelaContato extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contato'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Image.asset(
              'lib/imagens/detalhe_contato.png',
              width: 150,
              height: 150,
            ),
            SizedBox(width: 16),
            Text('Telefone: (11) 1234-5678', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Email: contato@atmconsultoria.com.br',
                style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Voltar'),
            ),
          ],
        ),
      ),
    );
  }
}
