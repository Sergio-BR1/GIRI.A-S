import 'package:flutter/material.dart';

import 'globals.dart';
import 'quiz/nordeste/pergunta_1.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GlobalVariable.init();
  runApp(const GIRIAS());
}

class GIRIAS extends StatelessWidget {
  const GIRIAS({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: GlobalVariable.navState,
      home: const Pergunta1(),
    );
  }
}
