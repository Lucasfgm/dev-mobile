import 'package:flutter/material.dart';

class NovosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Novos'),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: [
          ListTile(
            title: Text('Na planta'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Ação ao clicar
            },
          ),
          Divider(),
          ListTile(
            title: Text('Lançamentos'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Ação ao clicar
            },
          ),
          Divider(),
          ListTile(
            title: Text('Em construção'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Ação ao clicar
            },
          ),
        ],
      ),
    );
  }
}
