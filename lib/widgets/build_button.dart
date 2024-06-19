import 'package:flutter/material.dart';

import '../functions/functions.dart';

Widget buildButton({
  required String text,
  required Color color,
  required VoidCallback onPressed,
  required int buttonNumber,
  required int rightButton,
  required int pressedButton,
  required bool buttonsEnabled,
}) {
  return SizedBox(
    height: 35,
    width: 307,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: color,
        //verificar se esse é o botão certo
        disabledBackgroundColor:
            colorDisabledButton(buttonNumber, rightButton, pressedButton),
      ),
      onPressed: buttonsEnabled ? onPressed : null,
      child: Text(
        text,
        style: const TextStyle(
            color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
      ),
    ),
  );
}
