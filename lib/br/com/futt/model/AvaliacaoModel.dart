class AvaliacaoModel {
  int id;
  int idUsuario;
  int idAvaliado;
  DateTime data;
  String status;

  String respostaPe;
  String respostaLevantada;
  String respostaRecepcao;
  String respostaAtaqueFundo;
  String respostaAtaquePingo;
  String respostaAtaqueLob;
  String respostaShark;
  String respostaFintaPescoco;
  String respostaFintaOmbro;
  String respostaConstante;
  String respostaVariacao;
  String respostaInteligente;
  String respostaTatico;
  String respostaCompetitivo;
  String respostaPreparo;

  String nomeUsuario;
  String nomeAvaliado;

  AvaliacaoModel({this.id, this.idUsuario, this.idAvaliado, this.data,
      this.status, this.respostaPe, this.respostaLevantada,
      this.respostaRecepcao, this.respostaAtaqueFundo, this.respostaAtaquePingo,
      this.respostaAtaqueLob, this.respostaShark, this.respostaFintaPescoco,
      this.respostaFintaOmbro, this.respostaConstante, this.respostaVariacao,
      this.respostaInteligente, this.respostaTatico, this.respostaCompetitivo,
      this.respostaPreparo, this.nomeUsuario, this.nomeAvaliado});

}