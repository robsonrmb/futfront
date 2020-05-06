class QuantidadeModel {
  int quantidade;

  QuantidadeModel({this.quantidade});

  factory QuantidadeModel.fromJson(Map<String, dynamic> json) {
    return QuantidadeModel(
      quantidade: json["quantidade"],
    );
  }
}