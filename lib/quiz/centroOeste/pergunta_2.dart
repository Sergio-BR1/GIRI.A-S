import 'package:flutter/material.dart';

import '../../globals.dart';
import '../pergunta_template.dart';

class Pergunta2 extends StatelessWidget {
  const Pergunta2({super.key});

  @override
  Widget build(BuildContext context) {
    return PerguntaTemplate(
      rightButton: 1,
      textButton1: 'Bêbado',
      textButton2: 'Mecânico',
      textButton3: 'Acidene',
      caminhoImagem: '../assets/images/Baratino.png',
      giria: 'Borracho',
      proximaPerguntaCallback: () {
        GlobalVariable.navState.currentState?.push(
          MaterialPageRoute(builder: (context) => const Pergunta2()),
        );
      },
    );
  }
}
