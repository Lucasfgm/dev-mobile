import 'package:flutter/material.dart';
import 'Home.dart';
import 'package:intl/intl.dart';

void main() {
  Intl.defaultLocale = 'pt_BR';
  runApp(MaterialApp(
    title: "Máscaras e Validações",
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}
