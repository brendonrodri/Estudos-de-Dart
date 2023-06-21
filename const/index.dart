/* import 'dart:io'; //importa uma biblioteca nativa do dart

//esse biblioteca permite trabalhar com entrada e saída de dados
//função principal do dart, toda aplicação dart deve conter um main
//e todo o resto do código deve ser executado dentro dela
main() {
  const PI =
      3.1415; //a const é usada para declarar valores constante em tempo de compilação ou seja, valores pré-definidos como imutáveis.
  stdout.write('Informe o raio:'); //imprime na saída padrão do usuário
  //diferente do print() o stdout.write() não quebra linha ao final da string imprimida
  final entradaDoUsuario = stdin.readLineSync()!;
  //const que recebe a entrada do usuário através do método readLineSync(). Esse método é acessdado por meio do stdin, que da acesso a entrada padrão do usuário
  final double raio = double.parse(entradaDoUsuario);
  //final declara uma constante. nesse caso também está sendo informada a tipagem dessa constante. double.parse() está convertendo a variável de entrada do usuário, que é um texto, em número decimal.
  final double res = PI * raio * raio;
  /*A diferença entre const e final é que final deve ser usada para receber valores que não vão ser alterados em tempo de execução do código, enquanto ele está rodando, diferente da const que só pode ser atribuído um valor antes do código ser compilado */

  print("O valor do raio é: " + raio.toString());
  //imprime um texto em tela contendo o valor do raio também/
  //o valor precisa ser convertido para string com o método toString
  print("O valor do cálculo é: " + res.toString());

  
} */
/*Listas constantes */
main() {
  final lista1 = [1, 2, 3, 4];
  lista1.add(
      5); //nesse caso é possível adicionar um valor a lista, pois apenas o tipo de dado está definido como constante, não o seu valor
  //lista1 = [2,3]; retornará um erro dizendo que não pode ser reatribuído valores na final lista1
  final lista2 = const [1, 2, 3, 4];
  //lista2.add(6); retornará erro de exceção, pois está tentando adicionar mais items numa final de VALOR constante
  //lista2 = [1]; //retorna o mesmo erro a linha anterior;
  const lista3 = [1, 2, 3, 4, 5];
  //declarando uma lista utilizando o conceito de tempo de compilação, dessa forma não podendo ser alterado seu conteúdo
  print(lista1);
  print(lista2);
  print(lista3);
}
