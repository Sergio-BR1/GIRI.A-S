import 'package:flutter/material.dart';

import 'globals.dart';
import 'quiz/centroOeste/pergunta_1_centro_oeste.dart';
import 'quiz/nordeste/pergunta_1_nordeste.dart';
import 'quiz/norte/pergunta_1_norte.dart';
import 'quiz/sudeste/pergunta_1_sudeste.dart';
import 'quiz/sul/pergunta_1_sul.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({super.key});

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  final imagem = const AssetImage('../assets/images/imagem_inicial.png');
  final titulo = const AssetImage('../assets/images/titulo.png');
  int _pontuacaoTotal = 0;

  @override
  void initState() {
    super.initState();
    _loadPontuacao();
  }

  void _loadPontuacao() async {
    await GlobalVariable.init(); // Inicializa SharedPreferences
    setState(() {
      _pontuacaoTotal = GlobalVariable.getPontuacao();
    });
  }

  @override
  Widget build(BuildContext context) {
    GlobalVariable.pontuacao = 0;
    return Scaffold(
        backgroundColor: const Color(0xFF2B2B2B),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(image: titulo),
              Image(image: imagem),
              const Text('Escolha uma opção abaixo',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              Text(
                'Pontuação atual: $_pontuacaoTotal',
                style: const TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      width: 107,
                      height: 57,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: const Color(0xFF33A920)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Pergunta1Norte()));
                        },
                        child: const Text('Gírias do Norte'),
                      )),
                  SizedBox(
                      width: 107,
                      height: 57,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: const Color(0xFFF4BF36)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Pergunta1Nordeste()));
                        },
                        child: const Text('Gírias do Nordeste'),
                      )),
                  SizedBox(
                      width: 107,
                      height: 57,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: const Color(0xFFF44336)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Pergunta1Sudeste()));
                        },
                        child: const Text('Gírias do Sudeste'),
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      width: 107,
                      height: 57,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: const Color(0xFF33A920)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Pergunta1CentroOeste()));
                        },
                        child: const Text('Gírias do Centro-Oeste'),
                      )),
                  SizedBox(
                      width: 107,
                      height: 57,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: const Color(0xFFF4BF36)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Pergunta1Sul()));
                        },
                        child: const Text('Gírias do Sul'),
                      )),
                ],
              ),
              // Descomente esta parte se quiser um botão para ver a pontuação final
              // SizedBox(
              //   width: 319,
              //   height: 28,
              //   child: ElevatedButton(
              //     style: ElevatedButton.styleFrom(
              //       foregroundColor: Colors.white,
              //       backgroundColor: const Color(0xFFAF46B8)
              //     ),
              //     onPressed: (){
              //       Navigator.push(
              //           context,
              //           MaterialPageRoute(builder: (context) => const TelaFinal()));
              //     },
              //     child: const Text('Ver pontuação final'),
              //   ),),
            ],
          ),
        ));
  }
}
