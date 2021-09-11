import 'dart:io';

//import 'package:revisao_estrutura_repeticao_listas_funcoes/revisao_estrutura_repeticao_listas_funcoes.dart'
//    as revisao_estrutura_repeticao_listas_funcoes;

void main(List<String> arguments) {
  /*tabuadaDo(3);
  tabuadaDo(4);
  tabuadaDo(5);*/
  todaTabuada();
}

void tabuadaDo(int numero) {
  var linha = '';
  for (var multiplicador = 1; multiplicador <= 10; multiplicador++) {
    linha += '$numero*$multiplicador=${numero * multiplicador} |';
  }
  print(linha);
}

void todaTabuada() {
  var numero = 0;
  var multiplicador;
  do {
    numero++;
    multiplicador = 1;
    var tabuada = List<String>;
    while (multiplicador <= 10) {
      print('$numero*$multiplicador');
      multiplicador++;
    }
  } while (numero < 10);
}
