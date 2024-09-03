import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  String? valor;
  CampoTexto({this.valor});

  @override
  State<CampoTexto> createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  final _form = GlobalKey<FormState>();

  TextEditingController _textCampo1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Entrada de dados"),
      ),
      body: Form(
        key: _form,
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty || int.parse(value) < 18) {
                  return 'Campo uma idade maior ou igual a 18 anos';
                }
                return null;
              },
              controller: _textCampo1,
            ),
            ElevatedButton(
              child: Text("Salvar"),
              onPressed: () {
                if (_form.currentState!.validate()) {
                  print("Tudo OK");
                }
              },
            )
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _HomeState();
}

class _HomeState extends State<MyApp> {
  final TextEditingController _controllerAlcool = TextEditingController();
  final TextEditingController _controllerGasolina = TextEditingController();

  String _textoResultado = "";

  void _calcular() {
    double? precoAlcool = double.tryParse(_controllerAlcool.text);
    double? precoGasolina = double.tryParse(_controllerGasolina.text);

    if (precoAlcool == null || precoGasolina == null) {
      setState(() {
        _textoResultado = "Digite números maiores que 0 e utilize (.)";
      });
    } else {
      if ((precoAlcool / precoGasolina) >= 0.7) {
        setState(() {
          _textoResultado = "Melhor abastecer com Gasolina";
        });
      } else {
        setState(() {
          _textoResultado = "Melhor abastecer com Álcool";
        });
      }
      _limparCampos();
    }
  }

  void _limparCampos() {
    _controllerGasolina.text = "";
    _controllerAlcool.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Álcool ou Gasolina"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("lib/imagens/logo.png"),
            //*********************************************************************
            Text("Saiba qual melhor opção para abastecimento do seu veículo"),
            //*********************************************************************
            TextField(
              keyboardType: TextInputType.number,
              decoration:
                  const InputDecoration(labelText: "Preço do Álcool, ex. 4.99"),
              controller: _controllerAlcool,
            ),
            //*********************************************************************
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  labelText: "Preço da Gasolina, ex. 7.99"),
              controller: _controllerGasolina,
            ),
            //*********************************************************************
            ElevatedButton(child: Text("Calcular"), onPressed: _calcular),

            Text(_textoResultado),
          ],
        ),
      ),
    );
  }
}
