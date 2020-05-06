class TorneioModel {
  int id;
  String nome;
  int status;
  String pais;
  String estado;
  String cidade;
  String local;
  DateTime dataInicio;
  DateTime dataFim;
  int ano;
  int qtdDuplas;
  String genero;
  String info;
  int usuarioAdministrador;
  int atletaCampeao1;
  int atletaCampeao2;
  int atletaCampeao3;
  int atletaCampeao4;
  int atletaCampeao5;
  int atletaViceCampeao1;
  int atletaViceCampeao2;
  int atletaViceCampeao3;
  int atletaViceCampeao4;
  int atletaViceCampeao5;
  int atletaTerceiroLugar1;
  int atletaTerceiroLugar2;
  int atletaTerceiroLugar3;
  int atletaTerceiroLugar4;
  int atletaTerceiroLugar5;

  TorneioModel({this.id, this.nome, this.status, this.pais, this.estado, this.cidade,
      this.local, this.dataInicio, this.dataFim, this.ano, this.qtdDuplas,
      this.genero, this.info, this.usuarioAdministrador, this.atletaCampeao1,
      this.atletaCampeao2, this.atletaCampeao3, this.atletaCampeao4,
      this.atletaCampeao5, this.atletaViceCampeao1, this.atletaViceCampeao2,
      this.atletaViceCampeao3, this.atletaViceCampeao4, this.atletaViceCampeao5,
      this.atletaTerceiroLugar1, this.atletaTerceiroLugar2,
      this.atletaTerceiroLugar3, this.atletaTerceiroLugar4,
      this.atletaTerceiroLugar5});

  factory TorneioModel.fromJson(Map<String, dynamic> json) {
    return TorneioModel(
      id: json["id"],
      nome: json["nome"],
      status: json["status"],
      pais: json["pais"],
      estado: json["estado"],
      cidade: json["cidade"],
      local: json["local"],
      dataInicio: json["dataInicio"],
      dataFim: json["dataFim"],
      ano: json["ano"],
      qtdDuplas: json["qtdDuplas"],
      genero: json["genero"],
      info: json["info"],
      usuarioAdministrador: json["usuarioAdministrador"],
      atletaCampeao1: json["atletaCampeao1"],
      atletaCampeao2: json["atletaCampeao2"],
      atletaCampeao3: json["atletaCampeao3"],
      atletaCampeao4: json["atletaCampeao4"],
      atletaCampeao5: json["atletaCampeao5"],
      atletaViceCampeao1: json["atletaViceCampeao1"],
      atletaViceCampeao2: json["atletaViceCampeao2"],
      atletaViceCampeao3: json["atletaViceCampeao3"],
      atletaViceCampeao4: json["atletaViceCampeao4"],
      atletaViceCampeao5: json["atletaViceCampeao5"],
      atletaTerceiroLugar1: json["atletaTerceiroLugar1"],
      atletaTerceiroLugar2: json["atletaTerceiroLugar2"],
      atletaTerceiroLugar3: json["atletaTerceiroLugar3"],
      atletaTerceiroLugar4: json["atletaTerceiroLugar4"],
      atletaTerceiroLugar5: json["atletaTerceiroLugar5"],
    );
  }
}