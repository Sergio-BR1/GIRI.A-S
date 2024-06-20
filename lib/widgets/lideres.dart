import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

late final SharedPreferences prefs;

class Lideres extends StatelessWidget{
  const Lideres({super.key});

  @override
  Widget build(BuildContext context){
    var nome = prefs.getStringList('nome') ?? [];
    var pontuacao = prefs.getStringList('pontuacao') ?? [];
    String nomeLeader = "";
    String pontuacaoLeader = "";
    for(var i = 0; i < nome.length; i++){
      nomeLeader = nome[i];
      pontuacaoLeader = pontuacao[i]; 
    }
    {
      return Scaffold(
      body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                Text(nomeLeader),
                Text(pontuacaoLeader)
        ],)
             
      ),
    );
  }
    



}
}