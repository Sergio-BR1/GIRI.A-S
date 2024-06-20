import 'package:flutter/material.dart';

import '../../globals.dart';
import '../pergunta_template.dart';
import 'pergunta_2.dart';

class Pergunta1 extends StatelessWidget {
  const Pergunta1({super.key});

  @override
  Widget build(BuildContext context) {
    return PerguntaTemplate(
      rightButton: 2,
      textButton1: 'Chupar Gelo',
      textButton2: 'Beber álcool',
      textButton3: 'Beber rápido',
      caminhoImagem: '../assets/images/Comer_agua.png',
      giria: 'Comer água',
      proximaPerguntaCallback: () {
        GlobalVariable.navState.currentState?.push(
          MaterialPageRoute(builder: (context) => const Pergunta2()),
        );
      },
    );
  }
}
