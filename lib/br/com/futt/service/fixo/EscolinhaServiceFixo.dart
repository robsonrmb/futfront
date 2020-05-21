import 'package:com/br/com/futt/model/EscolinhaModel.dart';
import 'dart:convert';

class EscolinhaServiceFixo {

  String retornoEscolinha = '{'
        '"id": 1,'
        '"nome": "Escolinha do Alan",'
        '"telefone": "351 910888777",'
        '"website": "escolinhadoalan.com.br",'
        '"cidade": "Cascais",'
        '"estado": "",'
        '"pais": "",'
        '"endereco": "Praia dos Pesacadores",'
        '"descricao": "",'
        '"nomeResponsavel": "Alan",'
        '"nomeProfessor1": "Alan",'
        '"nomeProfessor2": "",'
        '"nomeProfessor3": "",'
        '"fotoResponsavel": "https://pbs.twimg.com/media/Dk0iKh4XoAERLOB.jpg",'
        '"fotoProfessor1": "",'
        '"fotoProfessor2": "",'
        '"fotoProfessor3": ""'
      '}';

  String retornoEscolinhas = '['
        '{'
          '"id": 1,'
          '"nome": "Escolinha do Alan",'
          '"telefone": "351 910888777",'
          '"website": "escolinhadoalan.com.br",'
          '"cidade": "Cascais",'
          '"estado": "",'
          '"pais": "",'
          '"endereco": "Praia dos Pesacadores",'
          '"descricao": "",'
          '"nomeResponsavel": "Alan",'
          '"nomeProfessor1": "Alan",'
          '"nomeProfessor2": "",'
          '"nomeProfessor3": "",'
          '"fotoResponsavel": "https://pbs.twimg.com/media/Dk0iKh4XoAERLOB.jpg",'
          '"fotoProfessor1": "",'
          '"fotoProfessor2": "",'
          '"fotoProfessor3": ""'
        '},'
        '{'
          '"id": 2,'
          '"nome": "Escolinha do Águia",'
          '"telefone": "55 11 910888777",'
          '"website": "escolinhadoaguia.com.br",'
          '"cidade": "Rio de Janeiro",'
          '"estado": "RJ",'
          '"pais": "Brasil",'
          '"endereco": "Arena TAF",'
          '"descricao": "",'
          '"nomeResponsavel": "Anderson",'
          '"nomeProfessor1": "Anderson",'
          '"nomeProfessor2": "Léo Tubarão",'
          '"nomeProfessor3": "Erick",'
          '"fotoResponsavel": "https://static.wixstatic.com/media/7b7a56_6505d03965af43ef849dd2e3dbe7ee21~mv2.jpg/v1/fill/w_800,h_800,al_c,q_90/7b7a56_6505d03965af43ef849dd2e3dbe7ee21~mv2.jpg",'
          '"fotoProfessor1": "",'
          '"fotoProfessor2": "",'
          '"fotoProfessor3": ""'
        '},'
        '{'
          '"id": 3,'
          '"nome": "Escolinha do Renan",'
          '"telefone": "55 61 910888777",'
          '"website": "escolinhadonelinho.com.br",'
          '"cidade": "Brasília",'
          '"estado": "DF",'
          '"pais": "Brasil",'
          '"endereco": "ASES",'
          '"descricao": "",'
          '"nomeResponsavel": "Renan",'
          '"nomeProfessor1": "Caquinho",'
          '"nomeProfessor2": "",'
          '"nomeProfessor3": "",'
          '"fotoResponsavel": "https://pbs.twimg.com/media/Dk0iKh4XoAERLOB.jpg",'
          '"fotoProfessor1": "",'
          '"fotoProfessor2": "",'
          '"fotoProfessor3": ""'
        '}'
      ']';

  String retornoEscolinhasFiltro = '['
        '{'
          '"id": 3,'
          '"nome": "Escolinha do Nelinho",'
          '"website": "escolinhadonelinho.com.br",'
          '"cidade": "Brasília",'
          '"estado": "DF",'
          '"pais": "Brasil",'
          '"endereco": "ASES",'
          '"descricao": "",'
          '"nomeResponsavel": "Nelio",'
          '"nomeProfessor1": "",'
          '"nomeProfessor2": "",'
          '"nomeProfessor3": "",'
          '"fotoResponsavel": "",'
          '"fotoProfessor1": "",'
          '"fotoProfessor2": "",'
          '"fotoProfessor3": ""'
        '}'
      ']';

  String responseLista(bool filtro) {
    if (!filtro) {
      return retornoEscolinhas;
    }else{
      return retornoEscolinhasFiltro;
    }
  }

  String responseObjeto() {
    return retornoEscolinha;
  }

}