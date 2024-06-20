import 'package:flutter/material.dart';

import '../../globals.dart';
import '../pergunta_template.dart';
import 'pergunta_2_norte.dart';

class Pergunta1Norte extends StatelessWidget {
  const Pergunta1Norte({super.key});

  @override
  Widget build(BuildContext context) {
    return PerguntaTemplate(
      rightButton: 1,
      textButton1: 'Confiável',
      textButton2: 'Grosso',
      textButton3: 'Resiliente',
      caminhoImagem: '../assets/images/De_rocha.png',
      giria: 'De rocha',
      proximaPerguntaCallback: () {
        GlobalVariable.navState.currentState?.pushReplacement(
          MaterialPageRoute(builder: (context) => const Pergunta2Norte()),
        );
      },
    );
  }
}
