import 'package:curso_tomorrow/tela_final.dart';
import 'package:flutter/material.dart';

import '../../globals.dart';
import '../pergunta_template.dart';

class Pergunta2Nordeste extends StatelessWidget {
  const Pergunta2Nordeste({super.key});

  @override
  Widget build(BuildContext context) {
    return PerguntaTemplate(
      rightButton: 3,
      textButton1: 'Comprar algo barato',
      textButton2: 'Matar barata',
      textButton3: 'Enganar alguém',
      caminhoImagem: '../assets/images/Baratino.png',
      giria: 'Baratino',
      proximaPerguntaCallback: () {
        GlobalVariable.navState.currentState?.pushReplacement(
          MaterialPageRoute(builder: (context) => const TelaFinal()),
        );
      },
    );
  }
}
