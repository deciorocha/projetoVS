//import 'package:projeto_aula/projeto_aula.dart' as projeto_aula;

import 'repeticao.dart';

void main(List<String> arguments) {
  //imprimir();
  //imprimirPessoa('Hélio');
  //print(devolverOla());
  //print(devolverPessoa('Heliao'));
  //imprimirOLa2('Décio', 0);
  //imprimirOLa2('Décião', 1);
  //imprimirOLa2(opcao: 0, nome: 'João');
  //imprimirOLa2(nome: 'Décião', opcao: 1);
  //imprimirOLa2('Décião');
  //imprimirOLa2('Décio', 1);
  //print(devolverOla3());
  // imprimirPessoa3(imprimir); // função dentro de outra função
  // função anonima dentro de outra função
  imprimirPessoa3(() {
    print('bom dia!!!');
  });
}

// função dentro de outra função.
void imprimirPessoa3(Function funcao) {
  funcao();
  print('tudo bem?');
}

String devolverOla3() => 'Olá, Pessoal!';

/*void imprimirOLa2(String nome, int opcao) { // Normal */
/*void imprimirOLa2({String? nome, int? opcao}) { // alterando as posições*/
void imprimirOLa2(String? nome, [int opcao = 0]) {
  print('Olá $nome!');
  if (opcao == 0) {
    print('Tudo Bem?');
  } else {
    print('Como vai?');
  }
}

// Sem retorno e sem parametro
void imprimir() {
  print('olá Pessoal');
}

// Sem retorno e com parametro
void imprimirPessoa(String nome) {
  print('olá $nome');
}

// Com retorno e sem parametro
String devolverOla() {
  return 'olá Pessoal';
}

// Com retorno e com parametro
String devolverPessoa(String nome) {
  return ('olá $nome');
}
