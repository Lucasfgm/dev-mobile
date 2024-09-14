import 'package:flutter/material.dart';

class ComprarAlugarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Número de abas
      child: Scaffold(
        appBar: AppBar(
          title: Text('Comprar/Alugar'),
          backgroundColor: Colors.red,
          bottom: TabBar(
            tabs: [
              Tab(text: 'Todos'),
              Tab(text: 'Destaques'),
              Tab(text: 'Acima de 50.000'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Aba "Todos"
            ListView(
              padding: EdgeInsets.all(8.0),
              children: [
                Card(
                  child: ListTile(
                    leading: Image.asset('lib/imagens/semitem.JPG',
                        width: 100, height: 100),
                    title: Text('Casa 1'),
                    subtitle: Text('R\$ 47.000,00'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset('lib/imagens/semitem.JPG',
                        width: 100, height: 100),
                    title: Text('Casa 2'),
                    subtitle: Text('R\$ 133.000,00'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset('lib/imagens/semitem.JPG',
                        width: 100, height: 100),
                    title: Text('Casa 3'),
                    subtitle: Text('R\$ 85.000,00'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset('lib/imagens/semitem.JPG',
                        width: 100, height: 100),
                    title: Text('Casa 4'),
                    subtitle: Text('R\$ 120.000,00'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset('lib/imagens/semitem.JPG',
                        width: 100, height: 100),
                    title: Text('Casa 5'),
                    subtitle: Text('R\$ 75.000,00'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset('lib/imagens/semitem.JPG',
                        width: 100, height: 100),
                    title: Text('Casa 6'),
                    subtitle: Text('R\$ 92.000,00'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset('lib/imagens/semitem.JPG',
                        width: 100, height: 100),
                    title: Text('Casa 7'),
                    subtitle: Text('R\$ 60.000,00'),
                  ),
                ),
              ],
            ),
            ListView(
              padding: EdgeInsets.all(8.0),
              children: [
              ],
            ),
            ListView(
              padding: EdgeInsets.all(8.0),
              children: [
                Card(
                  child: ListTile(
                    leading: Image.asset('lib/imagens/semitem.JPG',
                        width: 100, height: 100),
                    title: Text('Casa 2'),
                    subtitle: Text('R\$ 133.000,00'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset('lib/imagens/semitem.JPG',
                        width: 100, height: 100),
                    title: Text('Casa 4'),
                    subtitle: Text('R\$ 120.000,00'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset('lib/imagens/semitem.JPG',
                        width: 100, height: 100),
                    title: Text('Casa 5'),
                    subtitle: Text('R\$ 75.000,00'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset('lib/imagens/semitem.JPG',
                        width: 100, height: 100),
                    title: Text('Casa 6'),
                    subtitle: Text('R\$ 92.000,00'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
