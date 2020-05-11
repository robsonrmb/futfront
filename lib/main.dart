import 'package:com/br/com/futt/view/AvaliacoesView.dart';
import 'package:com/br/com/futt/view/CadastroView.dart';
import 'package:com/br/com/futt/view/HomeView.dart';
import 'package:com/br/com/futt/view/JogosView.dart';
import 'package:com/br/com/futt/view/LoginView.dart';
import 'package:com/br/com/futt/view/NovaAvaliacaoView.dart';
import 'package:com/br/com/futt/view/NovoTorneioView.dart';
import 'package:com/br/com/futt/view/ParticipantesView.dart';
import 'package:com/br/com/futt/view/PerfilView.dart';
import 'package:com/br/com/futt/view/ResultadosView.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/cadastro" : (context) => CadastroView(),
      "/home" : (context) => HomeView(),
      "/jogos" : (context) => JogosView(),
      "/resultados" : (context) => ResultadosView(),
      "/participantes" : (context) => ParticipantesView(),
      "/novo_torneio" : (context) => NovoTorneioView(),
      "/perfil" : (context) => PerfilView(),
      "/avaliacoes" : (context) => AvaliacoesView(),
      "/nova_avaliacao" : (context) => NovaAvaliacaoView(),
    },
    home: LoginView(),
    debugShowCheckedModeBanner: false,
  ));
}



