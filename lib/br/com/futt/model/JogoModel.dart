class JogoModel {
  int id;
  int numero;
  int pontuacao1;
  int pontuacao2;
  DateTime data;
  int idFase;
  int idTorneio;
  int idJogador1;
  int idJogador2;
  int idJogador3;
  int idJogador4;
  int idJogador5;
  int idJogador6;
  int idJogador7;
  int idJogador8;
  int idJogador9;
  int idJogador10;

  JogoModel({this.id, this.numero, this.pontuacao1, this.pontuacao2, this.data,
      this.idFase, this.idTorneio, this.idJogador1, this.idJogador2,
      this.idJogador3, this.idJogador4, this.idJogador5, this.idJogador6,
      this.idJogador7, this.idJogador8, this.idJogador9, this.idJogador10});

  factory JogoModel.fromJson(Map<String, dynamic> json) {
    return JogoModel(
      id: json["id"],
      numero: json["numero"],
      pontuacao1: json["pontuacao1"],
      pontuacao2: json["pontuacao2"],
      data: json["data"],
      idFase: json["idFase"],
      idTorneio: json["idTorneio"],
      idJogador1: json["idJogador1"],
      idJogador2: json["idJogador2"],
      idJogador3: json["idJogador3"],
      idJogador4: json["idJogador4"],
      idJogador5: json["idJogador5"],
      idJogador6: json["idJogador6"],
      idJogador7: json["idJogador7"],
      idJogador8: json["idJogador8"],
      idJogador9: json["idJogador9"],
      idJogador10: json["idJogador10"],
    );
  }
}