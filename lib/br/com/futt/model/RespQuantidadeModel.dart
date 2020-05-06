class RespQuantidadeModel {
  int valor1;
  int valor2;
  int valor3;
  int valor4;
  int valor5;
  int valor6;
  int valor7;
  int valor8;
  int valor9;
  int valor10;
  int valor11;
  int valor12;
  int valor13;
  int valor14;
  int valor15;
  int valor16;
  int valor17;
  int valor18;
  int valor19;
  int valor20;

  RespQuantidadeModel({this.valor1, this.valor2, this.valor3, this.valor4,
      this.valor5, this.valor6, this.valor7, this.valor8, this.valor9,
      this.valor10, this.valor11, this.valor12, this.valor13, this.valor14,
      this.valor15, this.valor16, this.valor17, this.valor18, this.valor19,
      this.valor20});

  factory RespQuantidadeModel.fromJson(Map<String, dynamic> json) {
    return RespQuantidadeModel(
      valor1: json["valor1"],
      valor2: json["valor2"],
      valor3: json["valor3"],
      valor4: json["valor4"],
      valor5: json["valor5"],
      valor6: json["valor6"],
      valor7: json["valor7"],
      valor8: json["valor8"],
      valor9: json["valor9"],
      valor10: json["valor10"],
      valor11: json["valor11"],
      valor12: json["valor12"],
      valor13: json["valor13"],
      valor14: json["valor14"],
      valor15: json["valor15"],
      valor16: json["valor16"],
      valor17: json["valor17"],
      valor18: json["valor18"],
      valor19: json["valor19"],
      valor20: json["valor20"],
    );
  }
}