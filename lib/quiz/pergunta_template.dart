import 'package:flutter/material.dart';

import '../globals.dart';
import '../widgets/build_button.dart';

class PerguntaTemplate extends StatefulWidget {
  final String textButton1;
  final String textButton2;
  final String textButton3;
  final String caminhoImagem;
  final String giria;
  final VoidCallback proximaPerguntaCallback;
  final int rightButton;

  // ignore: prefer_const_constructors_in_immutables
  PerguntaTemplate({
    super.key,
    required this.rightButton,
    required this.textButton1,
    required this.textButton2,
    required this.textButton3,
    required this.caminhoImagem,
    required this.giria,
    required this.proximaPerguntaCallback,
  });

  @override
  State<PerguntaTemplate> createState() => _PerguntaTemplateState();
}

class _PerguntaTemplateState extends State<PerguntaTemplate> {
  bool buttonsEnabled = true;
  int pressedButton = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2B2B2B),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    const Text(
                      'Pontuação',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      '${GlobalVariable.pontuacao}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 25),
              ],
            ),
            const Text(
              'Qual o significado?',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 25),
            Image(image: AssetImage(widget.caminhoImagem)),
            const SizedBox(height: 11),
            Text(
              widget.giria,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 70),
            buildButton(
              text: widget.textButton1,
              color: const Color(0xFF2196F3),
              onPressed: () {
                _onButtonPressed(1);
                pressedButton = 1;
              },
              buttonNumber: 1,
              rightButton: widget.rightButton,
              pressedButton: pressedButton,
              buttonsEnabled: buttonsEnabled,
            ),

            const SizedBox(height: 20),
            buildButton(
              text: widget.textButton2,
              color: const Color(0xFFFFB300),
              onPressed: () {
                _onButtonPressed(2);
                pressedButton = 2;
              },
              buttonNumber: 2,
              rightButton: widget.rightButton,
              pressedButton: pressedButton,
              buttonsEnabled: buttonsEnabled,
            ),

            const SizedBox(height: 20),
            buildButton(
              text: widget.textButton3,
              color: const Color(0xFF9C27B0),
              onPressed: () {
                _onButtonPressed(3);
                pressedButton = 3;
              },
              buttonNumber: 3,
              rightButton: widget.rightButton,
              pressedButton: pressedButton,
              buttonsEnabled: buttonsEnabled,
            ),
            //Margem inferior
            const SizedBox(height: 45),
          ],
        ),
      ),
    );
  }

  Future<void> _onButtonPressed(int buttonNumber) async {
    if (buttonNumber == widget.rightButton) GlobalVariable.pontuacao++;
    // Desabilita todos os botões
    setState(() {
      buttonsEnabled = false;
    });

    // Pausa para usuário ver a questão certa
    await Future.delayed(const Duration(seconds: 3));

    widget.proximaPerguntaCallback();
  }
}
