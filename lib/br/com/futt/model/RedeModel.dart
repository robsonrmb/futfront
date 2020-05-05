class RedeModel {
  int id;
  String nome;
  int status;
  String pais;
  String estado;
  String cidade;
  String local;
  String info;
  DateTime disponibilidade;
  int qtdIntegrantes;
  int responsavelRede;
  int responsavelJogos1;
  int responsavelJogos2;
  int responsavelJogos3;

  RedeModel({this.id, this.nome, this.status, this.pais, this.estado,
      this.cidade, this.local, this.info, this.disponibilidade,
      this.qtdIntegrantes, this.responsavelRede, this.responsavelJogos1,
      this.responsavelJogos2, this.responsavelJogos3});

}