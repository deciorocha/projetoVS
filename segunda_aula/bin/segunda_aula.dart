import 'dart:io';

import 'package:segunda_aula/segunda_aula.dart' as segunda_aula;

void main(List<String> arguments) {
  print('Informe a Nota');
  var entradaNota = stdin.readLineSync();
  var nota = double.parse(entradaNota);
  if (nota < 6) {
    var notaQueFaltou = 6 - nota;
    print('você reprovou!!! faltou $notaQueFaltou');
  } else {
    print('Você Passou... Parabéns!!!');
  }
}
