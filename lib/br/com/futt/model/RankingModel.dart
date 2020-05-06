class RankingModel {
  int id;
  int ano;
  int pontuacao;
  int idUsuario;
  String nomeUsuario;
  String apelidoUsuario;

  RankingModel({this.id, this.ano, this.pontuacao, this.idUsuario,
      this.nomeUsuario, this.apelidoUsuario});

  factory RankingModel.fromJson(Map<String, dynamic> json) {
    return RankingModel(
      id: json["id"],
      ano: json["ano"],
      pontuacao: json["pontuacao"],
      idUsuario: json["idUsuario"],
      nomeUsuario: json["nomeUsuario"],
      apelidoUsuario: json["apelidoUsuario"],
    );
  }
}