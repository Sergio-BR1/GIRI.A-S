import 'package:flutter/material.dart';

import '../../globals.dart';
import '../pergunta_template.dart';

class Pergunta2CentroOeste extends StatelessWidget {
  const Pergunta2CentroOeste({super.key});

  @override
  Widget build(BuildContext context) {
    return PerguntaTemplate(
      rightButton: 1,
      textButton1: 'Bêbado',
      textButton2: 'Mecânico',
      textButton3: 'Acidene',
      caminhoImagem: '../assets/images/Borracho.png',
      giria: 'Borracho',
      proximaPerguntaCallback: () {
        GlobalVariable.navState.currentState?.push(
          MaterialPageRoute(builder: (context) => const Pergunta2CentroOeste()),
        );
      },
    );
  }
}
