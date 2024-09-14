import 'package:flutter/material.dart';

class NossoTimePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nosso Time'),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: [
          Card(
            child: ListTile(
              leading: Image.asset('lib/imagens/semitem.JPG',
                  width: 100, height: 100),
              title: Text('Corretor João'),
              subtitle: Text('ID: 001'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(5, (index) => Icon(
                  index < 4 ? Icons.star : Icons.star_border,
                  color: Colors.yellow,
                )),
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset('lib/imagens/semitem.JPG',
                  width: 100, height: 100),
              title: Text('Corretor Fábio'),
              subtitle: Text('ID: 002'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(5, (index) => Icon(
                  index < 3 ? Icons.star : Icons.star_border,
                  color: Colors.yellow,
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
