import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuoteScreen(),
    );
  }
}

class QuoteScreen extends StatefulWidget {
  @override
  _QuoteScreenState createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
  // Lista de frases
  List<String> frases = [
    "A vida pode ser bela. Para isso, devemos sempre buscar nos pequenos detalhes a perfeição de cada instante.",
    "O sucesso é a soma de pequenos esforços repetidos dia após dia.",
    "Acredite em si mesmo e todo o resto se encaixará.",
    "A verdadeira sabedoria está em reconhecer a própria ignorância.",
    "O futuro depende do que fazemos no presente.",
    "A vida é uma aventura ousada ou nada.",
  ];

  // Variável para armazenar a frase atual
  String fraseAtual =
      "A vida pode ser bela. Para isso, devemos sempre buscar nos pequenos detalhes a perfeição de cada instante.";

  // Função para gerar uma nova frase aleatória
  void gerarNovaFrase() {
    final random = Random();
    setState(() {
      fraseAtual = frases[random.nextInt(frases.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frases do dia'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'lib/imagens/logof.png', // Caminho da imagem no projeto local
              height: 150,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                fraseAtual,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: gerarNovaFrase, // Chama a função ao clicar
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Cor de fundo do botão
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: Text('Clique aqui'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
