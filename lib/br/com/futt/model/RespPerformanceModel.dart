class RespPerformanceModel {
  int ruim;
  int regular;
  int bom;
  int otimo;

  RespPerformanceModel({this.ruim, this.regular, this.bom, this.otimo});

  factory RespPerformanceModel.fromJson(Map<String, dynamic> json) {
    return RespPerformanceModel(
      ruim: json["ruim"],
      regular: json["regular"],
      bom: json["bom"],
      otimo: json["otimo"],
    );
  }
}