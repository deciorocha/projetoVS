import 'package:primeira_aula/primeira_aula.dart' as primeira_aula;
import 'dart:io';

void main(List<String> arguments) {
  print('informe o seu nome: ');
  var nome = stdin.readLineSync();

  print('informe o sua Idade: ');
  var entradaIdade = stdin.readLineSync();
  var idade = int.parse(entradaIdade!);

  print('informe o seu salario: ');
  var entradaSalario = stdin.readLineSync();
  var salario = double.parse(entradaSalario!);

  print('Meu Nome é $nome, minha idade é $idade, meu salario é $salario');

  //print('Hello world: ${primeira_aula.calculate()}!');
}
