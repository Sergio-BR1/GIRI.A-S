
import 'package:curso_tomorrow/tela_inicial.dart';
import 'package:flutter/material.dart';
class TelaFinal extends StatelessWidget {
  const TelaFinal({super.key});

@override
  Widget build(BuildContext context){
    return( Scaffold(
      backgroundColor:  const Color(0xFF2B2B2B),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Image(image: AssetImage('../assets/images/fim-de-jogo.png')),
            const Text('Placar de Líderes', style: TextStyle(color: Colors.white, fontSize: 40)),
            Container(
              width: 330,
              height: 285,
              color: Colors.purple,
              padding: EdgeInsets.all(10),
              child: const Text("ele                oi")
            ),
            SizedBox(
              width: 307,
              height: 49,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor:  const Color(0xFF063DFF)
                ),
                onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const TelaInicial()));
                },
                child: const Text("Retornar ao menu principal"),
              ),
            ),
          ],
        ))
    ));
  }
}