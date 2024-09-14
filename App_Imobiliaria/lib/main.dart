import 'package:flutter/material.dart';
import 'compraralugar.dart';
import 'anuncienoapp.dart';
import 'novos.dart';
import 'nossotime.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: {
        '/comprarAlugar': (context) => ComprarAlugarPage(),
        '/anuncieNoApp': (context) => AnuncieNoAppPage(),
        '/novos': (context) => NovosPage(),
        '/nossoTime': (context) => NossoTimePage(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0) {
        Navigator.pushNamed(context, '/comprarAlugar');
      } else if (index == 1) {
        Navigator.pushNamed(context, '/novos');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FabImobiliaria'),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Perfil'),
              onTap: () {
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configurações'),
              onTap: () {
              },
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.red,
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/comprarAlugar');
              },
              child: Image.asset('lib/imagens/comprar.png'),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/comprarAlugar');
              },
              child: Image.asset('lib/imagens/alugar.png'),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/novos');
              },
              child: Image.asset('lib/imagens/novos.png'),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/anuncieNoApp');
              },
              child: Image.asset('lib/imagens/anucieaqui.png'),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/nossoTime');
              },
              child: Image.asset('lib/imagens/nossotime.png'),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
              },
              child: Image.asset('lib/imagens/sobrenos.png'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Comprar/Alugar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apartment_outlined),
            label: 'Novos',
          ),
        ],
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
