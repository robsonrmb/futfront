class TipoTorneioModel {
  int id;
  String nome;
  String descricao;
  String geracaoJogos;

  TipoTorneioModel({this.id, this.nome, this.descricao, this.geracaoJogos});

  factory TipoTorneioModel.fromJson(Map<String, dynamic> json) {
    return TipoTorneioModel(
      id: json["id"],
      nome: json["nome"],
      descricao: json["descricao"],
      geracaoJogos: json["geracaoJogos"],
    );
  }

  /* --------------------------------------
   * maneira mais simples e menos otimizada
   * --------------------------------------*/
  static converteJson(Map<String, dynamic> json) {
    return TipoTorneioModel(
      id: json["id"],
      nome: json["nome"],
      descricao: json["descricao"],
      geracaoJogos: json["geracaoJogos"],
    );
  }
}