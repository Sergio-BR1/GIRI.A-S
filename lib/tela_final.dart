import 'package:flutter/material.dart';

import 'globals.dart';
import 'tela_inicial.dart';

class TelaFinal extends StatefulWidget {
  const TelaFinal({super.key});

  @override
  TelaFinalState createState() => TelaFinalState();
}

class TelaFinalState extends State<TelaFinal> {
  int _pontuacaoTotal = 0;

  @override
  void initState() {
    super.initState();
    _loadPontuacao();
  }

  void _loadPontuacao() async {
    await GlobalVariable.init(); 
    setState(() {
      _pontuacaoTotal = GlobalVariable.getPontuacao();
      _incrementPontuacao(GlobalVariable.pontuacao);
    });
  }

  void _incrementPontuacao(int incrementValue) async {
    setState(() {
      _pontuacaoTotal += incrementValue;
    });
    await GlobalVariable.setPontuacao(_pontuacaoTotal);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2B2B2B),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    const Text(
                      'Pontuação Total',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      '$_pontuacaoTotal',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 30,
                )
              ],
            ),
            const Image(image: AssetImage('../assets/images/fim-de-jogo.png')),
            const SizedBox(
                width: 330,
                child: Image(image: AssetImage('../assets/images/Trofeu.png'))),
            Text(
              'Parabéns! você acertou ${GlobalVariable.pontuacao} questões!',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            SizedBox(
              width: 307,
              height: 49,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color(0xFF063DFF)),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TelaInicial()));
                },
                child: const Text("Retornar ao menu principal"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
