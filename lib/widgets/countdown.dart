import 'package:flutter/material.dart';
import 'package:timer_count_down/timer_count_down.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       // debugShowCheckedModeBanner: false,
//       home: Countdown(),
//     );
//   }
// }

class MyCountdown extends StatelessWidget {
  const MyCountdown({super.key});

  @override
  Widget build(BuildContext context) {
    return Countdown(
      seconds: 10,
      build: (BuildContext context, double time) => Text(time.toString()),
      interval: const Duration(milliseconds: 100),
      onFinished: () {
        print('Timer is done!');
      },
    );
  }
}
