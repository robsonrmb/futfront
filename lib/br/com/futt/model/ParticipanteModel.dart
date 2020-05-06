class ParticipanteModel {
  int idUsuario;
  String nome;
  String nomeFoto;
  String pais;
  String estado;

  int idTorneio;

  ParticipanteModel({this.idUsuario, this.nome, this.nomeFoto, this.pais,
      this.estado, this.idTorneio});

  factory ParticipanteModel.fromJson(Map<String, dynamic> json) {
    return ParticipanteModel(
      idUsuario: json["idUsuario"],
      nome: json["nome"],
      nomeFoto: json["nomeFoto"],
      pais: json["pais"],
      estado: json["estado"],
    );
  }
}