import 'package:com/br/com/futt/constantes/ConstantesConfig.dart';
import 'package:com/br/com/futt/model/ClassificacaoTorneioModel.dart';
import 'package:com/br/com/futt/model/EntidadeModel.dart';
import 'package:com/br/com/futt/model/TipoTorneioModel.dart';
import 'package:com/br/com/futt/model/utils/PaisModel.dart';
import 'package:com/br/com/futt/service/ClassificacaoTorneioService.dart';
import 'package:com/br/com/futt/service/EntidadeService.dart';
import 'package:com/br/com/futt/service/PaisService.dart';
import 'package:com/br/com/futt/service/TipoTorneioService.dart';
import 'package:find_dropdown/find_dropdown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NovoTorneioView extends StatefulWidget {
  @override
  _NovoTorneioViewState createState() => _NovoTorneioViewState();
}

class _NovoTorneioViewState extends State<NovoTorneioView> {

  String _mensagem = "";
  TextEditingController _controllerNome = TextEditingController();
  TextEditingController _controllerDataInicio = TextEditingController();
  TextEditingController _controllerDataFim = TextEditingController();
  TextEditingController _controllerQtdDuplas = TextEditingController();
  TextEditingController _controllerCidade = TextEditingController();
  TextEditingController _controllerMais = TextEditingController();

  void _cadastrar() async {
    Navigator.pop(context);
  }

  Future<List<TipoTorneioModel>> _listaTipoTorneios() async {
    TipoTorneioService resultadoService = TipoTorneioService();
    return resultadoService.listaTodos(ConstantesConfig.SERVICO_FIXO);
  }

  Future<List<EntidadeModel>> _listaEntidadesDoUsuario() async {
    EntidadeService entidadeService = EntidadeService();
    return entidadeService.listaPorUsuario(ConstantesConfig.SERVICO_FIXO);
  }

  Future<List<ClassificacaoTorneioModel>> _listaClassificacaoTorneios() async {
    ClassificacaoTorneioService classificacaoTorneioService = ClassificacaoTorneioService();
    return classificacaoTorneioService.listaTodos(ConstantesConfig.SERVICO_FIXO);
  }

  Future<List<PaisModel>> _listaPaises() async {
    PaisService paisService = PaisService();
    return paisService.listaPaises();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text(
          "Cadastro de torneios",
          style: TextStyle(
              color: Colors.black
          ),
        ),
        backgroundColor: Colors.grey[300],
      ),
      body: Container(
        color: Colors.grey[300],
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "Insira os dados do torneio para cadastrar",
                    style: TextStyle(
                        fontSize: 12
                    ),
                  ),
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage('https://pbs.twimg.com/media/Dk0iKh4XoAERLOB.jpg'),
                  radius: 30.0,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    "Logo do Torneio",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: Icon(
                              Icons.done_all,
                              color: Colors.black,
                            ),
                            // icon: new Icon(Icons.person),
                            // prefixText: "Nome",
                            // prefixStyle: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
                            // labelText: "Informe seu nome",
                            hintText: "Nome do torneio",
                            hintStyle: TextStyle(
                              fontSize: 14,
                              //fontWeight: FontWeight.w300,
                              color: Colors.black,
                            ),
                            /* border: OutlineInputBorder(
                              gapPadding: 5,
                            ),*/
                          ),
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black
                          ),
                          //maxLength: 5,
                          //maxLengthEnforced: true,
                          controller: _controllerNome,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: FindDropdown<TipoTorneioModel>(
                          onFind: (String filter) => _listaTipoTorneios(),
                          searchBoxDecoration: InputDecoration(
                            hintText: "Search",
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (TipoTorneioModel data) => print(data.id),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: FindDropdown<ClassificacaoTorneioModel>(
                          showSearchBox: false,
                          onFind: (String filter) => _listaClassificacaoTorneios(),
                          searchBoxDecoration: InputDecoration(
                            hintText: "Search",
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (ClassificacaoTorneioModel data) => print(data),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: FindDropdown<EntidadeModel>(
                          showSearchBox: false,
                          onFind: (String filter) => _listaEntidadesDoUsuario(),
                          searchBoxDecoration: InputDecoration(
                            hintText: "Search",
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (EntidadeModel data) => print(data),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: FindDropdown<PaisModel>(
                          showSearchBox: false,
                          onFind: (String filter) => _listaPaises(),
                          searchBoxDecoration: InputDecoration(
                            hintText: "Search",
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (PaisModel data) => print(data),
                        ),
                      ),
                      TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Cidade",
                          hintStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[400],
                          ),
                          /* border: OutlineInputBorder(
                                    gapPadding: 1,
                                  ),*/
                        ),
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black
                        ),
                        //maxLength: 100,
                        //maxLengthEnforced: true,
                        controller: _controllerCidade,
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: TextField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: "Data Início",
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey[400],
                                  ),
                                  /* border: OutlineInputBorder(
                                    gapPadding: 1,
                                  ),*/
                                ),
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black
                                ),
                                maxLength: 10,
                                //maxLengthEnforced: true,
                                controller: _controllerDataInicio,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 3, 0),
                            ),
                            Expanded(
                              child: TextField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: "Data fim",
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey[400],
                                  ),
                                  /* border: OutlineInputBorder(
                                    gapPadding: 1,
                                  ),*/
                                ),
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black
                                ),
                                maxLength: 10,
                                //maxLengthEnforced: true,
                                controller: _controllerDataFim,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 3, 0),
                            ),
                            Expanded(
                              child: TextField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: "32, 16, 8 ou 4",
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey[400],
                                  ),
                                  /* border: OutlineInputBorder(
                                    gapPadding: 1,
                                  ),*/
                                ),
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black
                                ),
                                maxLength: 2,
                                //maxLengthEnforced: true,
                                controller: _controllerQtdDuplas,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(
                                width: 1.0,
                              color: Colors.grey[400],
                            )
                        ),
                        child: TextField(
                          maxLines: 10,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration.collapsed(hintText: "Observação"),
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black
                          ),
                          controller: _controllerMais,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: RaisedButton(
                          color: Color(0xff086ba4),
                          textColor: Colors.white,
                          padding: EdgeInsets.all(15),
                          child: Text(
                            "Cadastrar",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Candal',
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                          onPressed: _cadastrar,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          _mensagem,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Candal'
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
