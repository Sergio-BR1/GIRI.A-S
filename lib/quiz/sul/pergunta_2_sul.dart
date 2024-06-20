import 'package:flutter/material.dart';

import '../../globals.dart';
import '../pergunta_template.dart';

class Pergunta2 extends StatelessWidget {
  const Pergunta2({super.key});

  @override
  Widget build(BuildContext context) {
    return PerguntaTemplate(
      rightButton: 3,
      textButton1: 'Pia quebrada',
      textButton2: 'Piado de bicho',
      textButton3: 'Garoto',
      caminhoImagem: '../assets/images/Baratino.png',
      giria: 'Piá',
      proximaPerguntaCallback: () {
        GlobalVariable.navState.currentState?.push(
          MaterialPageRoute(builder: (context) => const Pergunta2()),
        );
      },
    );
  }
}
