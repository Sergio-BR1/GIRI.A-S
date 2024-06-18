import 'package:flutter/material.dart';

class TelaResposta extends StatelessWidget {
  const TelaResposta({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2B2B2B),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // const Row(
            //   children: [
            //     Countdown(),
            //     Text(
            //       'teste',
            //       style: TextStyle(
            //         color: Colors.white,
            //       ),
            //     )
            //   ],
            // ),
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
            SizedBox(
              height: 35,
              width: 307,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFFF44336),
                ),
                onPressed: () {},
                child: const Text(
                  "Chupar Gelo",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 35,
              width: 307,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFF4CAF50),
                ),
                onPressed: () {},
                child: const Text(
                  "Beber álcool",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 35,
              width: 307,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xD1D9D9D9),
                ),
                onPressed: () {},
                child: const Text(
                  "Beber rápido",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 45),
          ],
        ),
      ),
    );
  }
}
