import 'package:curso_tomorrow/tela_final.dart';
import 'package:flutter/material.dart';

import '../../globals.dart';
import '../pergunta_template.dart';

class Pergunta2Norte extends StatelessWidget {
  const Pergunta2Norte({super.key});

  @override
  Widget build(BuildContext context) {
    return PerguntaTemplate(
      rightButton: 2,
      textButton1: 'Emagreceu',
      textButton2: 'Morreu',
      textButton3: 'Cansou',
      caminhoImagem: '../assets/images/Levou_o_farelo.png',
      giria: 'Levou o farelo',
      proximaPerguntaCallback: () {
        GlobalVariable.navState.currentState?.pushReplacement(
          MaterialPageRoute(builder: (context) => const TelaFinal()),
        );
      },
    );
  }
}
