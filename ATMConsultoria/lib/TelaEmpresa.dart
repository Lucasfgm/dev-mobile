import 'package:flutter/material.dart';

class TelaEmpresa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Empresa'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.asset(
                  'lib/imagens/detalhe_empresa.png',
                  width: 100,
                  height: 100,
                ),
                SizedBox(width: 16),
                Text(
                  'Sobre a empresa',
                  style: TextStyle(fontSize: 24, color: Color(0xFFFF5722)),
                ),
              ],
            ),
            SizedBox(height: 32),
            Text(
              'A ATM Consultoria é uma empresa especializada em soluções financeiras e '
              'consultoria empresarial. Com anos de experiência, ajudamos nossos clientes a '
              'alcançar seus objetivos financeiros e empresariais.',
              style: TextStyle(fontSize: 18),
            ),
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
