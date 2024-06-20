import 'package:curso_tomorrow/quiz/centroOeste/pergunta_1_centro_oeste.dart';
import 'package:curso_tomorrow/quiz/nordeste/pergunta_1_nordeste.dart';
import 'package:curso_tomorrow/quiz/norte/pergunta_1_norte.dart';
import 'package:curso_tomorrow/quiz/sudeste/pergunta_1_sudeste.dart';
import 'package:curso_tomorrow/quiz/sul/pergunta_1_sul.dart';
import 'package:curso_tomorrow/tela_final.dart';
import 'package:flutter/material.dart';

class TelaInicial extends StatefulWidget {
   const TelaInicial({super.key});

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
final imagem =  const AssetImage('../assets/images/imagem_inicial.png'); 

final titulo = const AssetImage('../assets/images/titulo.png');






@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2B2B2B),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: titulo),
            Image(image: imagem),
             const Text('Escolha uma opção abaixo', style:TextStyle(fontSize: 20, color: Colors.white)), 
              
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                width: 107,
                height: 57,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    
                    foregroundColor: Colors.white,
                    backgroundColor: const Color(0xFF33A920)
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Pergunta1Norte()));
                  },
                  child: const Text('Gírias do Norte'),
                )
                ),
                SizedBox(
                width: 107,
                height: 57,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color(0xFFF4BF36)
                  ),
                  onPressed: (){
                     Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Pergunta1Nordeste()));
                  },
                  child: const Text('Gírias do Nordeste'),
                )
                ),
                SizedBox(
                width: 107,
                height: 57,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color(0xFFF44336)
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Pergunta1Sudeste()));
                  },
                  child: const Text('Gírias do Sudeste'),
                )
                )
           ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                width: 107,
                height: 57,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color(0xFF33A920)
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Pergunta1CentroOeste()));
                  },
                  child: const Text('Gírias do Centro-Oeste'),
                )
                ),
                SizedBox(
                width: 107,
                height: 57,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color(0xFFF4BF36)
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Pergunta1Sul()));
                  },
                  child: const Text('Gírias do Sul'),
                )),
           ]),
            SizedBox(
              width: 319,
              height: 28,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFFAF46B8)
                ),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const TelaFinal()));
                },
                child: const Text('ver placar'),
              ),),

        ],),)

    );
  }
}
