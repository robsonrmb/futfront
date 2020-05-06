class RankingEntidadeModel {
  int id;
  String nome;
  String descricao;

  RankingEntidadeModel({this.id, this.nome, this.descricao});

  factory RankingEntidadeModel.fromJson(Map<String, dynamic> json) {
    return RankingEntidadeModel(
      id: json["id"],
      nome: json["nome"],
      descricao: json["descricao"],
    );
  }
}