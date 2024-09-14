import 'package:flutter/material.dart';

class AnuncieNoAppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anuncie no App'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset('lib/imagens/logo.png',
                  height: 150),
            ),
            SizedBox(height: 20),
            Text(
              'Cadastre seu imóvel',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(labelText: 'Tipo de imóvel'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Disponível para'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Preço de venda'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Endereço do imóvel'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Valor do aluguel'),
            ),
          ],
        ),
      ),
    );
  }
}
