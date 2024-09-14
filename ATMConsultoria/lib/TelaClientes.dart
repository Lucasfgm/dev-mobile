import 'package:flutter/material.dart';

class TelaClientes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clientes'),
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
                  'lib/imagens/detalhe_cliente.png',
                  width: 100,
                  height: 100,
                ),
                SizedBox(width: 16),
                Text(
                  'Clientes',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 32),
            Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Image.asset(
                      'lib/imagens/cliente1.png',
                      width: 100,
                      height: 100,
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Empresa de Software',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Column(
                  children: <Widget>[
                    Image.asset(
                      'lib/imagens/cliente2.png',
                      width: 100,
                      height: 100,
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Empresa de Auditoria',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(height: 16),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
