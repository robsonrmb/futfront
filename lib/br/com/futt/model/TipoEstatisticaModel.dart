import 'package:com/br/com/futt/model/TipoRespostaEstatisticaModel.dart';

class TipoEstatisticaModel {
  int id;
  String nome;
  String descricao;
  List<TipoRespostaEstatisticaModel> listaTipoRespostaEstatistica;

  TipoEstatisticaModel({this.id, this.nome, this.descricao, this.listaTipoRespostaEstatistica});

}