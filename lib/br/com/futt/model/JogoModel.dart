class JogoModel {
  int _id;
  int _numero;
  int _pontuacao1;
  int _pontuacao2;
  DateTime _data;
  int _idFase;
  int _idTorneio;
  int _idJogador1;
  int _idJogador2;
  int _idJogador3;
  int _idJogador4;
  int _idJogador5;
  int _idJogador6;
  int _idJogador7;
  int _idJogador8;
  int _idJogador9;
  int _idJogador10;

  JogoModel(this._id, this._numero, this._pontuacao1, this._pontuacao2, this._data,
      this._idFase, this._idTorneio, this._idJogador1, this._idJogador2,
      this._idJogador3, this._idJogador4, this._idJogador5, this._idJogador6,
      this._idJogador7, this._idJogador8, this._idJogador9, this._idJogador10);

  factory JogoModel.fromJson(Map<String, dynamic> json) {
    return JogoModel(
      json["id"],
      json["numero"],
      json["pontuacao1"],
      json["pontuacao2"],
      json["data"],
      json["idFase"],
      json["idTorneio"],
      json["idJogador1"],
      json["idJogador2"],
      json["idJogador3"],
      json["idJogador4"],
      json["idJogador5"],
      json["idJogador6"],
      json["idJogador7"],
      json["idJogador8"],
      json["idJogador9"],
      json["idJogador10"],
    );
  }

  int get idJogador10 => _idJogador10;

  set idJogador10(int value) {
    _idJogador10 = value;
  }

  int get idJogador9 => _idJogador9;

  set idJogador9(int value) {
    _idJogador9 = value;
  }

  int get idJogador8 => _idJogador8;

  set idJogador8(int value) {
    _idJogador8 = value;
  }

  int get idJogador7 => _idJogador7;

  set idJogador7(int value) {
    _idJogador7 = value;
  }

  int get idJogador6 => _idJogador6;

  set idJogador6(int value) {
    _idJogador6 = value;
  }

  int get idJogador5 => _idJogador5;

  set idJogador5(int value) {
    _idJogador5 = value;
  }

  int get idJogador4 => _idJogador4;

  set idJogador4(int value) {
    _idJogador4 = value;
  }

  int get idJogador3 => _idJogador3;

  set idJogador3(int value) {
    _idJogador3 = value;
  }

  int get idJogador2 => _idJogador2;

  set idJogador2(int value) {
    _idJogador2 = value;
  }

  int get idJogador1 => _idJogador1;

  set idJogador1(int value) {
    _idJogador1 = value;
  }

  int get idTorneio => _idTorneio;

  set idTorneio(int value) {
    _idTorneio = value;
  }

  int get idFase => _idFase;

  set idFase(int value) {
    _idFase = value;
  }

  DateTime get data => _data;

  set data(DateTime value) {
    _data = value;
  }

  int get pontuacao2 => _pontuacao2;

  set pontuacao2(int value) {
    _pontuacao2 = value;
  }

  int get pontuacao1 => _pontuacao1;

  set pontuacao1(int value) {
    _pontuacao1 = value;
  }

  int get numero => _numero;

  set numero(int value) {
    _numero = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }


}