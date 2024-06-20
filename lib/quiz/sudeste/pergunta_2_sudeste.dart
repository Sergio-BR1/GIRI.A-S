import 'package:flutter/material.dart';

import '../../globals.dart';
import '../pergunta_template.dart';

class Pergunta2 extends StatelessWidget {
  const Pergunta2({super.key});

  @override
  Widget build(BuildContext context) {
    return PerguntaTemplate(
      rightButton: 3,
      textButton1: 'Soteropolitano',
      textButton2: 'Idoso',
      textButton3: 'Vigarista',
      caminhoImagem: '../assets/images/Baratino.png',
      giria: '71',
      proximaPerguntaCallback: () {
        GlobalVariable.navState.currentState?.push(
          MaterialPageRoute(builder: (context) => const Pergunta2()),
        );
      },
    );
  }
}
