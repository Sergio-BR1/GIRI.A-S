import 'package:flutter/material.dart';

class BotaoRegiao extends StatelessWidget{
  const BotaoRegiao({super.key});


@override 
Widget build(BuildContext context) {
  return Center(
    child: Material(
      elevation: 8.0,
      borderRadius: BorderRadius.circular(12.0),
      child:  InkWell(
        child: SizedBox(
          height: 107 ,
          width: 57,
        ),
      ),
    ),
  );
}
}