import 'package:flutter/material.dart';

import '../../globals.dart';
import '../pergunta_template.dart';

class Pergunta2 extends StatelessWidget {
  const Pergunta2({super.key});

  @override
  Widget build(BuildContext context) {
    return PerguntaTemplate(
      rightButton: 2,
      textButton1: 'Emagreceu',
      textButton2: 'Morreu',
      textButton3: 'Cansou',
      caminhoImagem: '../assets/images/Baratino.png',
      giria: 'Levou o farelo',
      proximaPerguntaCallback: () {
        GlobalVariable.navState.currentState?.push(
          MaterialPageRoute(builder: (context) => const Pergunta2()),
        );
      },
    );
  }
}
