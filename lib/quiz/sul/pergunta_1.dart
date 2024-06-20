import 'package:flutter/material.dart';

import '../../globals.dart';
import '../pergunta_template.dart';
import 'pergunta_2.dart';

class Pergunta1 extends StatelessWidget {
  const Pergunta1({super.key});

  @override
  Widget build(BuildContext context) {
    return PerguntaTemplate(
      rightButton: 1,
      textButton1: 'Pão francês',
      textButton2: 'Cassetete pequeno',
      textButton3: 'Surra leve',
      caminhoImagem: '../assets/images/Comer_agua.png',
      giria: 'Cacetinho',
      proximaPerguntaCallback: () {
        GlobalVariable.navState.currentState?.push(
          MaterialPageRoute(builder: (context) => const Pergunta2()),
        );
      },
    );
  }
}
