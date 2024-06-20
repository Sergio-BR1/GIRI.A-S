import 'package:curso_tomorrow/tela_inicial.dart';
import 'package:flutter/material.dart';

import 'globals.dart';
import 'package:shared_preferences/shared_preferences.dart';

late final SharedPreferences prefs;
  
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  prefs = await SharedPreferences.getInstance();
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
      home: const TelaInicial(),
    );
  }
}
