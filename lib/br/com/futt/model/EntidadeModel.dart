class EntidadeModel {
  int id;
  String nome;
  String sigla;
  int tipo;
  String website;
  String status;
  DateTime disponibilidade;
  int idResponsavelEntidade;
  int idSubresponsavel1;
  int idSubresponsavel2;
  int idSubresponsavel3;

  EntidadeModel({this.id, this.nome, this.sigla, this.tipo, this.website,
      this.status, this.disponibilidade, this.idResponsavelEntidade,
      this.idSubresponsavel1, this.idSubresponsavel2, this.idSubresponsavel3});

  factory EntidadeModel.fromJson(Map<String, dynamic> json) {
    return EntidadeModel(
      id: json["id"],
      nome: json["nome"],
      sigla: json["sigla"],
      tipo: json["tipo"],
      website: json["website"],
      status: json["status"],
      disponibilidade: json["disponibilidade"],
      idResponsavelEntidade: json["idResponsavelEntidade"],
      idSubresponsavel1: json["idSubresponsavel1"],
      idSubresponsavel2: json["idSubresponsavel2"],
      idSubresponsavel3: json["idSubresponsavel3"],
    );
  }
}