class RankingServiceFixo {

  String retornoRanking = '[ '
        '{'
          '"id": 1, '
          '"ano": 2020, '
          '"pontuacao": 2180, '
          '"idUsuario": 1, '
          '"nomeUsuario": "Robson", '
          '"apelidoUsuario": "Robinho", '
          '"fotoUsuario": "https://i.pinimg.com/originals/88/31/be/8831be300e5b4b7758f0bc34ef6d5db8.jpg" '
        '}, '
        '{'
          '"id": 2, '
          '"ano": 2020, '
          '"pontuacao": 160, '
          '"idUsuario": 2, '
          '"nomeUsuario": "Pedro", '
          '"apelidoUsuario": "Pedrinho", '
          '"fotoUsuario": "https://3.bp.blogspot.com/-HCGJETqqJP0/VDspCWJ_1DI/AAAAAAAAAoI/warI-4pJH9A/s1600/suarez14.jpg" '
        '}, '
        '{'
          '"id": 3, '
          '"ano": 2020, '
          '"pontuacao": 180, '
          '"idUsuario": 1, '
          '"nomeUsuario": "Iuca", '
          '"apelidoUsuario": "Iuquiba", '
          '"fotoUsuario": "https://pbs.twimg.com/media/Dk0iKh4XoAERLOB.jpg" '
        '}, '
        '{'
          '"id": 2, '
          '"ano": 2020, '
          '"pontuacao": 160, '
          '"idUsuario": 2, '
          '"nomeUsuario": "Lucas", '
          '"apelidoUsuario": "Luquinhas", '
          '"fotoUsuario": "https://live.staticflickr.com/5116/5862708162_d0bc38a073_z.jpg" '
        '}, '
        '{'
          '"id": 1, '
          '"ano": 2020, '
          '"pontuacao": 180, '
          '"idUsuario": 1, '
          '"nomeUsuario": "Robson", '
          '"apelidoUsuario": "Robinho", '
          '"fotoUsuario": "https://pbs.twimg.com/media/Dk0iKh4XoAERLOB.jpg" '
        '}, '
        '{'
          '"id": 2, '
          '"ano": 2020, '
          '"pontuacao": 160, '
          '"idUsuario": 2, '
          '"nomeUsuario": "Pedro", '
          '"apelidoUsuario": "Pedrinho", '
          '"fotoUsuario": "https://i.pinimg.com/originals/1a/64/50/1a64503c82c12a2f1aea73cbad418db7.jpg" '
        '}, '
        '{'
          '"id": 1, '
          '"ano": 2020, '
          '"pontuacao": 180, '
          '"idUsuario": 1, '
          '"nomeUsuario": "Robson", '
          '"apelidoUsuario": "Robinho", '
          '"fotoUsuario": "https://i.pinimg.com/originals/50/65/c9/5065c907335f6cf04a5d1db7408036c9.jpg" '
        '}, '
        '{'
          '"id": 2, '
          '"ano": 2020, '
          '"pontuacao": 160, '
          '"idUsuario": 2, '
          '"nomeUsuario": "Pedro", '
          '"apelidoUsuario": "Pedrinho", '
          '"fotoUsuario": "https://pbs.twimg.com/media/Dk0iKh4XoAERLOB.jpg" '
        '}, '
        '{'
          '"id": 1, '
          '"ano": 2020, '
          '"pontuacao": 180, '
          '"idUsuario": 1, '
          '"nomeUsuario": "Robson", '
          '"apelidoUsuario": "Robinho", '
          '"fotoUsuario": "https://pbs.twimg.com/media/Dk0iKh4XoAERLOB.jpg" '
        '}, '
        '{'
          '"id": 2, '
          '"ano": 2020, '
          '"pontuacao": 160, '
          '"idUsuario": 2, '
          '"nomeUsuario": "Pedro", '
          '"apelidoUsuario": "Pedrinho", '
          '"fotoUsuario": "https://pbs.twimg.com/media/Dk0iKh4XoAERLOB.jpg" '
        '} '
      ']';

  String retornoRankingFiltrado = '[ '
        '{'
          '"id": 3, '
          '"ano": 2020, '
          '"pontuacao": 180, '
          '"idUsuario": 1, '
          '"nomeUsuario": "Iuca", '
          '"apelidoUsuario": "Iuquiba", '
          '"fotoUsuario": "https://pbs.twimg.com/media/Dk0iKh4XoAERLOB.jpg" '
        '}, '
        '{'
          '"id": 2, '
          '"ano": 2020, '
          '"pontuacao": 160, '
          '"idUsuario": 2, '
          '"nomeUsuario": "Lucas", '
          '"apelidoUsuario": "Luquinhas", '
          '"fotoUsuario": "https://live.staticflickr.com/5116/5862708162_d0bc38a073_z.jpg" '
        '}, '
        '{'
          '"id": 2, '
          '"ano": 2020, '
          '"pontuacao": 160, '
          '"idUsuario": 2, '
          '"nomeUsuario": "Pedro", '
          '"apelidoUsuario": "Pedrinho", '
          '"fotoUsuario": "https://pbs.twimg.com/media/Dk0iKh4XoAERLOB.jpg" '
        '} '
      ']';

  String responseLista(bool filtro) {
    if (!filtro) {
      return retornoRanking;
    }else{
      return retornoRankingFiltrado;
    }
  }

}