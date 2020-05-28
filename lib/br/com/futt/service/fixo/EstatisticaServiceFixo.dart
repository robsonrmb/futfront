class EstatisticaServiceFixo {

  String retornoPerformancePadrao = '['
        '{'
          '"ruim": 10,'
          '"regular": "15",'
          '"bom": "20",'
          '"otimo": "17"'
        '}'
      ']';

  String retornoPerformanceRecepcao = '['
        '{'
          '"ruim": 10,'
          '"regular": "15",'
          '"bom": "20",'
          '"otimo": "17"'
        '}'
      ']';

  /*
    ESTATÍSTICAS DE QUANTIDADES.
   */
  String retornoQuantidadePadrao = '['
        '{'
          '"valor1": 10,'
          '"valor2": "15"'
        '}'
      ']';

  String retornoQuantidadeVD = '['
        '{'
          '"valor1": 10,'
          '"valor2": "15"'
        '}'
      ']';

  /*
    QUANTIDADES.
   */
  String retornoQuantidadeUnicaPadrao = '['
        '{'
          '"quantidade": 10'
        '}'
      ']';

  String retornoQuantidadeUnicaPontos = '['
        '{'
          '"quantidade": 12'
        '}'
      ']';

  String responseListaPerformance(int tipo) {
    if (tipo == 0) {
      return retornoPerformancePadrao;
    }else if (tipo == 1) {
      return retornoPerformanceRecepcao;
    }
  }

  String responseListaQuantidade(int tipo) {
    if (tipo == 0) {
      return retornoQuantidadePadrao;
    }else if (tipo == 1) {
      return retornoQuantidadeVD;
    }
  }

  String responseQuantidade(int tipo) {
    if (tipo == 0) {
      return retornoQuantidadeUnicaPadrao;
    }else if (tipo == 1) {
      return retornoQuantidadeUnicaPontos;
    }
  }

}