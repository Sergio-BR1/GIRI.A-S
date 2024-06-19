import 'package:flutter/material.dart';

import '../globals.dart';
import '../widgets/build_button.dart';
import 'pergunta_1.dart';

class Pergunta2 extends StatefulWidget {
  const Pergunta2({super.key});

  @override
  State<Pergunta2> createState() => _Pergunta2State();
}

class _Pergunta2State extends State<Pergunta2> {
  bool buttonsEnabled = true;
  int rightButton = 3;
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
              children: [
                const SizedBox(
                  width: 45,
                ),
                const Text(
                  '0s',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(width: 350),
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
            const Image(image: AssetImage('../assets/images/Baratino.png')),
            const SizedBox(height: 11),
            const Text(
              'Baratino',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 70),
            buildButton(
              text: 'Comprar algo barato',
              color: const Color(0xFF2196F3),
              onPressed: () {
                _onButtonPressed(1);
                pressedButton = 1;
              },
              buttonNumber: 1,
              rightButton: rightButton,
              pressedButton: pressedButton,
              buttonsEnabled: buttonsEnabled,
            ),

            const SizedBox(height: 20),
            buildButton(
              text: 'Matar barata',
              color: const Color(0xFFFFB300),
              onPressed: () {
                _onButtonPressed(1);
                pressedButton = 2;
              },
              buttonNumber: 2,
              rightButton: rightButton,
              pressedButton: pressedButton,
              buttonsEnabled: buttonsEnabled,
            ),

            const SizedBox(height: 20),
            buildButton(
              text: 'Enganar alguém',
              color: const Color(0xFF9C27B0),
              onPressed: () {
                _onButtonPressed(1);
                pressedButton = 3;
              },
              buttonNumber: 3,
              rightButton: rightButton,
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
    // Desabilita todos os botões
    setState(() {
      buttonsEnabled = false;
    });

    // Pausa para usuário ver a questão certa
    await Future.delayed(const Duration(seconds: 3));

    GlobalVariable.navState.currentState?.push(
      MaterialPageRoute(builder: (context) => const Pergunta1()),
    );
  }
}
