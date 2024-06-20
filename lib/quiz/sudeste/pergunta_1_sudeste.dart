import 'package:flutter/material.dart';

import '../../globals.dart';
import '../pergunta_template.dart';
import 'pergunta_2_sudeste.dart';

class Pergunta1Sudeste extends StatelessWidget {
  const Pergunta1Sudeste({super.key});

  @override
  Widget build(BuildContext context) {
    return PerguntaTemplate(
      rightButton: 1,
      textButton1: 'Falar Sério',
      textButton2: 'Queixo quadrado',
      textButton3: 'Conversa de frente',
      caminhoImagem: '../assets/images/Papo_reto.png',
      giria: 'Papo reto',
      proximaPerguntaCallback: () {
        GlobalVariable.navState.currentState?.pushReplacement(
          MaterialPageRoute(builder: (context) => const Pergunta2Sudeste()),
        );
      },
    );
  }
}
