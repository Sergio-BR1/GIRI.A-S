import 'package:flutter/material.dart';

Color colorDisabledButton(
    int buttonNumber, int rightButton, int pressedButton) {
  //Se o botão for o da resposta certa, fica verde
  if (buttonNumber == rightButton) {
    return const Color(0xFF4CAF50);
    //Se for a resposta errada e foi pressionado, fica vermelho
  } else if (pressedButton == buttonNumber) {
    return const Color(0xFFF44336);
  }
  //Se for a resposta errada e foi pressionado, fica cinza
  return const Color(0xD1D9D9D9);
}
