//import 'package:projeto_aula/projeto_aula.dart' as projeto_aula;

void main(List<String> arguments) {
  // List<String> nomes = List<String>();
  // var nomes = <String>[];
  var nomes = ['Joaquim', 'Maria', 'Ana', 'Rivaldo', 'Narci', 'Paula'];
  print(nomes[0]);
  print(nomes);
  nomes.add('Pedro');
  print(nomes);
  nomes.insert(0, 'Rebeca');
  print(nomes);
  nomes.removeAt(1);
  print(nomes);
  var qtElementos = nomes.length;
  print(qtElementos);
  var contador = 0;
  // WHILE
  while (contador < qtElementos) {
    print(contador.toString() + ' - ' + nomes[contador]);
    contador++;
  }

  contador = 0;
  // DO ... WHILE
  do {
    print(contador.toString() + ' - ' + nomes[contador]);
    contador++;
  } while (contador < qtElementos);

  // FOR
  for (var i = 0; i < qtElementos; i++) {
    print(i.toString() + ' - ' + nomes[i]);
  }
  // FOR Each
  for (var nome in nomes) {
    print(nome);
  }

  // FOREATCH da Variável
  nomes.forEach(imprimir);
  // FOREATCH da Variável com Função Anonima Dentro
  nomes.forEach((String nome) {
    print(nome);
  });

  // FOREATCH da Variável com Função Anonima Direta
  nomes.forEach((nome) => print(nome));

  // FOREATCH da Variável só com a Função Print
  nomes.forEach(print);
}

void imprimir(String nome) {
  print(nome);
}
