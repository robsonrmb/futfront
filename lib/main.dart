import 'package:com/br/com/futt/view/AvaliacoesView.dart';
import 'package:com/br/com/futt/view/CadastroCampeoesView.dart';
import 'package:com/br/com/futt/view/CadastroView.dart';
import 'package:com/br/com/futt/view/EdicaoTorneioView.dart';
import 'package:com/br/com/futt/view/HomeView.dart';
import 'package:com/br/com/futt/view/JogosView.dart';
import 'package:com/br/com/futt/view/LoginView.dart';
import 'package:com/br/com/futt/view/MeusTorneiosView.dart';
import 'package:com/br/com/futt/view/NovaAvaliacaoView.dart';
import 'package:com/br/com/futt/view/NovoParticipanteView.dart';
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
      "/edicao_torneio" : (context) => EdicaoTorneioView(),
      "/meustorneios" : (context) => MeusTorneiosView(),
      "/cadastro_campeoes" : (context) => CadastroCampeoesView(),
      "/perfil" : (context) => PerfilView(),
      "/avaliacoes" : (context) => AvaliacoesView(),
      "/nova_avaliacao" : (context) => NovaAvaliacaoView(),
    },
    home: LoginView(),
    theme: ThemeData(
      primaryColor: Colors.black,
      accentColor: Colors.black,

    ),
    debugShowCheckedModeBanner: false,
  ));
}



