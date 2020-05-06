class ClassificacaoTorneioModel {
  int id;
  String nome;
  String descricao;

  ClassificacaoTorneioModel({this.id, this.nome, this.descricao});

  factory ClassificacaoTorneioModel.fromJson(Map<String, dynamic> json) {
    return ClassificacaoTorneioModel(
      id: json["id"],
      nome: json["nome"],
      descricao: json["descricao"],
    );
  }
}