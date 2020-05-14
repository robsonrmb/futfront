class ResultadoModel {
  int idTorneio;
  String tituloTorneio;
  String dataTorneio;
  String paisTorneio;
  String cidadeTorneio;
  int idJogador1;
  int idJogador2;
  String nomeJogador1;
  String nomeJogador2;
  String apelidoJogador1;
  String apelidoJogador2;

  ResultadoModel({this.idTorneio, this.tituloTorneio, this.dataTorneio,
      this.paisTorneio, this.cidadeTorneio, this.idJogador1, this.idJogador2,
      this.nomeJogador1, this.nomeJogador2, this.apelidoJogador1,
      this.apelidoJogador2});

  factory ResultadoModel.fromJson(Map<String, dynamic> json) {
    return ResultadoModel(
      idTorneio: json["idTorneio"],
      tituloTorneio: json["tituloTorneio"],
      dataTorneio: json["dataTorneio"],
      paisTorneio: json["paisTorneio"],
      cidadeTorneio: json["cidadeTorneio"],
      idJogador1: json["idJogador1"],
      idJogador2: json["idJogador2"],
      nomeJogador1: json["nomeJogador1"],
      nomeJogador2: json["nomeJogador2"],
      apelidoJogador1: json["apelidoJogador1"],
      apelidoJogador2: json["apelidoJogador2"],
    );
  }
}