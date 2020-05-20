import 'package:com/br/com/futt/model/utils/PaisModel.dart';
import 'package:com/br/com/futt/service/PaisService.dart';
import 'package:com/br/com/futt/view/subview/TorneiosSubView.dart';
import 'package:find_dropdown/find_dropdown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TorneiosView extends StatefulWidget {
  @override
  _TorneiosViewState createState() => _TorneiosViewState();
}

class _TorneiosViewState extends State<TorneiosView> {

  TextEditingController _controllerNome = TextEditingController();
  String _controllerPais = "";
  TextEditingController _controllerCidade = TextEditingController();
  TextEditingController _controllerData = TextEditingController();

  int _indiceDeBusca = 0; //Busca todos os torneios
  String _nomeFiltro = "";
  String _paisFiltro = "";
  String _cidadeFiltro = "";
  String _dataFiltro = "";

  _pesquisarTorneios() {
    setState(() {
      _indiceDeBusca = 1; //Busca por filtros
      _nomeFiltro = _controllerNome.text;
      _paisFiltro = _controllerPais;
      _cidadeFiltro = _controllerCidade.text;
      _dataFiltro = _controllerData.text;
    });
  }

  Future<List<PaisModel>> _listaPaises() async {
    PaisService paisService = PaisService();
    return paisService.listaPaises();
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(2),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Veja os detalhes.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Candal',
                        ),
                      ),
                      Text("Crie também seu próprio torneio!!!",
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 12,
                          fontFamily: 'Candal',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: GestureDetector(
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.find_in_page,
                                color: Color(0xff086ba4),
                              ),
                              Text(" Pesquisa de torneios",
                                style: TextStyle(
                                  color: Color(0xff086ba4),
                                  fontSize: 12,
                                  fontFamily: 'Candal',
                                ),
                              ),
                            ],
                          ),
                          onTap: () {
                            showDialog(context: context, builder: (context){
                              return AlertDialog(
                                title: Text("Pesquise seu torneio"),
                                content: SingleChildScrollView(
                                  child: Column(
                                    children: <Widget>[
                                      TextField(
                                        decoration: InputDecoration(
                                          labelText: "Nome",
                                        ),
                                        controller: _controllerNome,
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                          labelText: "Datas",
                                        ),
                                        controller: _controllerData,
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                          labelText: "Cidade ou local",
                                        ),
                                        controller: _controllerCidade,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 10),
                                        child: FindDropdown<PaisModel>(
                                          label: "País",
                                          showSearchBox: false,
                                          onFind: (String filter) => _listaPaises(),
                                          searchBoxDecoration: InputDecoration(
                                            hintText: "Search",
                                            border: OutlineInputBorder(),
                                          ),
                                          onChanged: (PaisModel data) => _controllerPais = data.id,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                actions: <Widget>[
                                  FlatButton(
                                    child: RaisedButton(
                                      color: Color(0xff086ba4),
                                      textColor: Colors.white,
                                      padding: EdgeInsets.all(15),
                                      child: Text(
                                        "Pesquisar",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'Candal',
                                        ),
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                    ),
                                    onPressed: () {
                                      _pesquisarTorneios();
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              );
                            });
                          },
                        ),
                      ),
                    ],
                  ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 2, 10, 0),
                child: RaisedButton(
                  color: Color(0xff086ba4),
                  textColor: Colors.white,
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Novo torneio",
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Candal',
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                  onPressed: (){
                    Navigator.pushNamed(context, "/novo_torneio");
                  },
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: TorneiosSubView(_indiceDeBusca, _nomeFiltro, _paisFiltro, _cidadeFiltro, _dataFiltro),
        )
      ],
    );
  }
}

