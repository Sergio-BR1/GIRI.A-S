import 'package:flutter/material.dart';

import 'globals.dart'; // Importe a chave global
import 'tela_quiz.dart'; // Importe a tela do quiz

void main() {
  runApp(
    const GIRIAS(),
  );
}

class GIRIAS extends StatelessWidget {
  const GIRIAS({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: GlobalVariable.navState,
      home: const TelaQuiz(),
    );
  }
}
