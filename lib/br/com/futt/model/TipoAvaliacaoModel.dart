import 'package:com/br/com/futt/model/TipoRespostaAvaliacaoModel.dart';

class TipoAvaliacaoModel {
  int id;
  String nome;
  String descricao;
  List<TipoRespostaAvaliacaoModel> listaTipoRespostaAvaliacao;

  TipoAvaliacaoModel({this.id, this.nome, this.descricao, this.listaTipoRespostaAvaliacao});

}