import 'package:flutter/material.dart';

import '../globals.dart';
import 'pergunta_2.dart';

class Pergunta1 extends StatefulWidget {
  const Pergunta1({super.key});

  @override
  State<Pergunta1> createState() => _Pergunta1State();
}

class _Pergunta1State extends State<Pergunta1> {
  bool buttonsEnabled = true;
  int rightButton = 2;
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
            const Image(image: AssetImage('../assets/images/Comer_agua.png')),
            const SizedBox(height: 11),
            const Text(
              'Comer água',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 70),
            buildButton(
              text: 'Chupar Gelo',
              color: const Color(0xFF2196F3),
              onPressed: () {
                _onButtonPressed();
                pressedButton = 1;
              },
              buttonNumber: 1,
            ),

            const SizedBox(height: 20),
            buildButton(
              text: 'Beber álcool',
              color: const Color(0xFFFFB300),
              onPressed: () {
                _onButtonPressed();
                pressedButton = 2;
              },
              buttonNumber: 2,
            ),

            const SizedBox(height: 20),
            buildButton(
              text: 'Beber rápido',
              color: const Color(0xFF9C27B0),
              onPressed: () {
                _onButtonPressed();
                pressedButton = 3;
              },
              buttonNumber: 3,
            ),
            //Margem inferior
            const SizedBox(height: 45),
          ],
        ),
      ),
    );
  }

//Cria botão
  Widget buildButton({
    required String text,
    required Color color,
    required VoidCallback onPressed,
    required int buttonNumber,
  }) {
    return SizedBox(
      height: 35,
      width: 307,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: color,
          //verificar se esse é o botão certo
          disabledBackgroundColor: pressedButton != buttonNumber
              ? const Color(0xD1D9D9D9)
              : trueOrFalse(buttonNumber),
        ),
        onPressed: buttonsEnabled ? onPressed : null,
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Future<void> _onButtonPressed() async {
    // Desabilita todos os botões
    setState(() {
      buttonsEnabled = false;
    });

    // Pausa para usuário ver a questão certa
    await Future.delayed(const Duration(seconds: 3));

    GlobalVariable.navState.currentState?.push(
      MaterialPageRoute(builder: (context) => const Pergunta2()),
    );
  }

  Color trueOrFalse(int buttonNumber) {
    if (buttonNumber == rightButton) {
      GlobalVariable.pontuacao++;
      return const Color(0xFF4CAF50);
    }
    return const Color(0xFFF44336);
  }
}
