class UsuarioModel {
  int id;
  String nome;
  String email;
  String senha;
  String apelido;
  DateTime dataNascimento;
  String ondeJoga;
  String tipo;
  String nivel;
  String cidade;
  String estado;
  String pais;
  String status;
  String sexo;
  String professor;
  String nomeFoto;

  UsuarioModel({this.id, this.nome, this.email, this.senha, this.apelido,
      this.dataNascimento, this.ondeJoga, this.tipo, this.nivel, this.cidade,
      this.estado, this.pais, this.status, this.sexo, this.professor,
      this.nomeFoto});

  factory UsuarioModel.fromJson(Map<String, dynamic> json) {
    return UsuarioModel(
      id: json["id"],
      nome: json["nome"],
      email: json["email"],
      senha: json["senha"],
      apelido: json["apelido"],
      dataNascimento: json["dataNascimento"],
      ondeJoga: json["ondeJoga"],
      tipo: json["tipo"],
      nivel: json["nivel"],
      cidade: json["cidade"],
      estado: json["estado"],
      pais: json["pais"],
      status: json["status"],
      sexo: json["sexo"],
      professor: json["professor"],
      nomeFoto: json["nomeFoto"],
    );
  }
}