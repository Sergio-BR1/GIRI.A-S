import 'package:flutter/material.dart';

class TelaInicial extends StatefulWidget {
   const TelaInicial({super.key});

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
final imagem =  const AssetImage('../assets/images/imagem_inicial.png'); 

final titulo = const AssetImage('../assets/images/titulo.png');

var norte = false;

var nordeste = false;

var sudeste = false;

var centro = false;

var sul = false;

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
             const Text('Escolha uma ou mais opções abaixo', style:TextStyle(fontSize: 20, color: Colors.white)), 
              
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
                  onPressed: (){},
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
                  onPressed: (){},
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
                  onPressed: (){},
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
                  onPressed: (){},
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
                  onPressed: (){sul ==  false ? sul = true : sul = false;},
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
                onPressed: (){},
                child: const Text('Todas as opções'),
              ),),
              SizedBox(
                width: 319 ,
                height: 100 ,
                 child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 0, 0, 0)
                ),
                onPressed: (){},
                child: const Text('INICIAR', 
                style: TextStyle(fontSize: 40),)
              ))

        ],),)

    );
  }
}
