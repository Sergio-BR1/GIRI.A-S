import 'package:flutter/material.dart';

import '../../globals.dart';
import '../pergunta_template.dart';
import 'pergunta_2_sul.dart';

class Pergunta1Sul extends StatelessWidget {
  const Pergunta1Sul({super.key});

  @override
  Widget build(BuildContext context) {
    return PerguntaTemplate(
      rightButton: 1,
      textButton1: 'Pão francês',
      textButton2: 'Cassetete pequeno',
      textButton3: 'Surra leve',
      caminhoImagem: '../assets/images/Cacetinho.png',
      giria: 'Cacetinho',
      proximaPerguntaCallback: () {
        GlobalVariable.navState.currentState?.push(
          MaterialPageRoute(builder: (context) => const Pergunta2Sul()),
        );
      },
    );
  }
}
