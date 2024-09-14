import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _valorCheck = false;
  bool _valorSwitch = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _recuperar();
  }

  final TextEditingController _controllerCampo = TextEditingController();

  _salvar() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString("nome", _controllerCampo.text);
    await prefs.setBool("check", _valorCheck);
    await prefs.setBool("switch", _valorSwitch);
  }

  _recuperar() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _controllerCampo.text = prefs.getString("nome") ?? "Sem valor";
      _valorCheck = prefs.getBool("check") ?? false;
      _valorSwitch = prefs.getBool("switch") ?? false;
    });
  }

  _remover() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove("nome");
    await prefs.remove("check");
    await prefs.remove("switch");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Configurações do usuário local"),
      ),
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.text,
              decoration:
                  const InputDecoration(labelText: "Digite alguma coisa"),
              controller: _controllerCampo,
            ),
            CheckboxListTile(
              title: const Text("Receber notificações"),
              subtitle: const Text("Notificações da sala de aula"),
              activeColor: Colors.blue,
              secondary: const Icon(Icons.add_box),
              value: _valorCheck,
              onChanged: (bool? valor) {
                setState(() {
                  _valorCheck = valor!;
                });
              },
            ),
            SwitchListTile(
              title: const Text("Ligar som"),
              value: _valorSwitch,
              onChanged: (bool valor) {
                setState(() {
                  _valorSwitch = valor;
                });
              },
            ),
            Center(
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      child: const Text("Salvar"),
                      onPressed: _salvar,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: ElevatedButton(
                      child: const Text("Recuperar"),
                      onPressed: _recuperar,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: ElevatedButton(
                      child: const Text("Remover"),
                      onPressed: _remover,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
