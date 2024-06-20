import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GlobalVariable {
  static late SharedPreferences _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static Future<void> setCounter(int value) async {
    await _prefs.setInt('pontuacaoTotal', value);
  }

  static int getCounter() {
    return _prefs.getInt('pontuacaoTotal') ?? 0;
  }

  static final GlobalKey<NavigatorState> navState = GlobalKey<NavigatorState>();
  static int pontuacao = 0;
}
