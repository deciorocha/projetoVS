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

  dynamic y = 'Roberto'; // nasce como String;
  y = 10; // Vira Numérico Inteiro;
  y = 99.9; // Vira Número Double.

  print('Meu Nome é $nome,');
  print(' minha idade é $idade,');
  print(' meu salario é $salario');
  print(' valor y $y');

  print('Hello world: ${primeira_aula.calculate()}!');
  print('Hello world: ${primeira_aula.mostreTudo()}!');
}
