import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyCOF1FGHent6Tg1u0WuMtQJBdCpQRAlMEI',
      appId: '1:716144377540:android:9ba12a7bced448531d1391',
      messagingSenderId: 'sendid',
      projectId: 'bd-projeto-flutter-a025d',
      storageBucket: 'bd-projeto-flutter-a025d.appspot.com',
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> _createUser() async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: 'emaildapessoa@gmail.com',
        password: '94#52AD_63',
      );
      print('Usuário criado: ${userCredential.user!.email}');
    } catch (e) {
      print('Erro ao criar usuário: $e');
    }
  }

  Future<void> _loginUser() async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: 'emaildapessoa@gmail.com',
        password: '94#52AD_63',
      );
      print('Usuário logado: ${userCredential.user!.email}');
    } catch (e) {
      print('Erro ao logar usuário: $e');
    }
  }

  Future<void> _signOut() async {
    await _auth.signOut();
    print('Usuário deslogado');
  }

  Future<void> _saveData() async {
    await _db.collection("usuarios").doc("001").set({
      "nome": "Juliana Souza",
      "idade": 38,
    });
    print("Dados salvos");
  }

  Future<void> _updateData() async {
    await _db.collection("usuarios").doc("001").update({
      "idade": 39,
    });
    print("Dados atualizados");
  }

  Future<void> _deleteData() async {
    await _db.collection("usuarios").doc("001").delete();
    print("Dados removidos");
  }

  Future<void> _getData() async {
    DocumentSnapshot snapshot = await _db.collection("usuarios").doc("001").get();
    Map<String, dynamic>? dados = snapshot.data() as Map<String, dynamic>?;

    if (dados != null) {
      print('Nome: ${dados['nome']}, Idade: ${dados['idade']}');
    } else {
      print('Nenhum dado encontrado');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Firebase Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: _createUser,
              child: Text('Criar Usuário'),
            ),
            ElevatedButton(
              onPressed: _loginUser,
              child: Text('Login Usuário'),
            ),
            ElevatedButton(
              onPressed: _signOut,
              child: Text('Logout Usuário'),
            ),
            ElevatedButton(
              onPressed: _saveData,
              child: Text('Salvar Dados'),
            ),
            ElevatedButton(
              onPressed: _updateData,
              child: Text('Atualizar Dados'),
            ),
            ElevatedButton(
              onPressed: _deleteData,
              child: Text('Remover Dados'),
            ),
            ElevatedButton(
              onPressed: _getData,
              child: Text('Recuperar Dados'),
            ),
          ],
        ),
      ),
    );
  }
}
