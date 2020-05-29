import 'package:com/br/com/futt/constantes/ConstantesEstatisticas.dart';

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

  String retornoPerformanceTecnica = '['
        '{'
          '"resposta": "10#12#15#20#18#10#12#15#20#18#10#12#15#20#18#10#12#15#20#18#10#12#15#20#18#10#12#15#20#18#8#3"'
        '}'
      ']';

  String retornoPerformanceTatica = '['
        '{'
        '"resposta": "10#12#15#20#18#10#12#15#20#18#10#12#15#18#10#12#15#20#12#15#20#18#8#3"'
        '}'
      ']';

  String retornoVD = '['
        '{'
          '"resposta": "10#12"'
        '}'
      ']';

  String retornoTIE = '['
        '{'
          '"resposta": "20#15"'
        '}'
      ']';

  String retornoCAPOTE = '['
        '{'
          '"resposta": "10#31"'
        '}'
      ']';

  String retornoA2 = '['
        '{'
          '"resposta": "19#12"'
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

  String responseEstatisticas(int tipo) {
    if (tipo == ConstantesEstatisticas.TECNICA) {
      return retornoPerformanceTecnica;
    }else if (tipo == ConstantesEstatisticas.TATICA) {
      return retornoPerformanceTatica;
    }else if (tipo == ConstantesEstatisticas.VD) {
      return retornoVD;
    }else if (tipo == ConstantesEstatisticas.TIE) {
      return retornoTIE;
    }else if (tipo == ConstantesEstatisticas.CAPOTE) {
      return retornoCAPOTE;
    }else if (tipo == ConstantesEstatisticas.A2) {
      return retornoA2;
    }
  }

}