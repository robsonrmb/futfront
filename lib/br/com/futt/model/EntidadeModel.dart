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

}