class AvaliacaoModel {
  int id;
  int idUsuario;
  int idAvaliado;
  DateTime data;
  String status;

  String respostaPe;
  String respostaLevantada;
  String respostaRecepcao;
  String respostaAtaque;
  String respostaDefesa;
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
      this.respostaRecepcao, this.respostaAtaque, this.respostaDefesa,
      this.respostaShark, this.respostaFintaPescoco, this.respostaFintaOmbro,
      this.respostaConstante, this.respostaVariacao, this.respostaInteligente,
      this.respostaTatico, this.respostaCompetitivo, this.respostaPreparo,
      this.nomeUsuario, this.nomeAvaliado});

  factory AvaliacaoModel.fromJson(Map<String, dynamic> json) {
    return AvaliacaoModel(
      id: json["id"],
      idUsuario: json["idUsuario"],
      idAvaliado: json["idAvaliado"],
      data: json["data"],
      status: json["status"],
      respostaPe: json["respostaPe"],
      respostaLevantada: json["respostaLevantada"],
      respostaRecepcao: json["respostaRecepcao"],
      respostaAtaque: json["respostaAtaque"],
      respostaDefesa: json["respostaDefesa"],
      respostaShark: json["respostaShark"],
      respostaFintaPescoco: json["respostaFintaPescoco"],
      respostaFintaOmbro: json["respostaFintaOmbro"],
      respostaConstante: json["respostaConstante"],
      respostaVariacao: json["respostaVariacao"],
      respostaInteligente: json["respostaInteligente"],
      respostaTatico: json["respostaTatico"],
      respostaCompetitivo: json["respostaCompetitivo"],
      respostaPreparo: json["respostaPreparo"],
      nomeUsuario: json["nomeUsuario"],
      nomeAvaliado: json["nomeAvaliado"],
    );
  }
}