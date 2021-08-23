import 'dart:io';

//import 'package:revisao_variaveis_e_estrutura_decisao/revisao_variaveis_e_estrutura_decisao.dart'
//    as revisao_variaveis_e_estrutura_decisao;

void main(List<String> arguments) {
  print(' CURSO DE FLUTTER E DART - 1ª Revisão ');
  print('+------------------------------------+');
  print('|      SELEÇÃO ANIMAL POR PESO       |');
  print('+------------------------------------+');
  print('|                                    |');
  print('| Valor de refugo é o peso mínimo    |');
  print('| que estabelece se o animal está    |');
  print('| apto para a Engorda engorda.       |');
  print('| Pesos Ideiais entre 360 e 420 kg.  |');
  print('|                                    |');
  print('| Entre com o Valor de Refugo:       |');
  var strPesoRefugo = stdin.readLineSync(); // Lê Peso Base de Refugo
  var pesoRefugo = int.parse(strPesoRefugo!); // Converte para Inteiro
  print('| Entre com a Quantidade de Animal a |');
  print('| serem pesados de Refugo:           |');
  dynamic qtAnimais = stdin.readLineSync(); // Lê Quantidade Animais
  qtAnimais = int.parse(qtAnimais); // Converte Para inteiro
  print('|                                    |');
  var pesoTotal = 0; // Guarda Peso de Todos Animais Pesados
  var contaAnimais = 0; // Conta Animais de Engorda
  int intPesoAnimal; // Peso do Animal
  var conta;
  for (conta = 0; conta < qtAnimais; conta++) {
    print('| Entre com o Peso do ${conta + 1}º Animal:  |');
    print('| 0 para Sair                        |');

    var strPesoAnimal = stdin.readLineSync(); // Lê Teclado
    intPesoAnimal = int.parse(strPesoAnimal!); // converte para Inteiro
    if (intPesoAnimal == 0) break;

    pesoTotal += intPesoAnimal; // Soma os Pesos
    String resultadoPeso; // Texto que Informa para onde vai o Animal

    if (intPesoAnimal > pesoRefugo) {
      // Testa Peso do Animal vs. Peso de Refugo
      resultadoPeso = '| Animal vai para Engorda          |';
      contaAnimais++; // Soma + 1 para Animais de Engorda
    } else {
      resultadoPeso = '| Animal Refugado                  |';
    }

    print('|                                  |');
    print(resultadoPeso);
    print('|                                    |');
  }
  int qtRefugados = qtAnimais - contaAnimais; // Obtem os animais Refugados

  print('+------------------------------------+');
  print('|                                    |');
  print('| Valor Base de Refugo: $pesoRefugo |');
  print('| Animais à Pesar: $qtAnimais    |');
  print('| Animais Pesados: $conta     |');
  print('| Animais à Engorda: $contaAnimais  |');
  print('| Animais Refugados: $qtRefugados |');
  print('| Peso Total dos Animais: $pesoTotal Kg.|');
}
