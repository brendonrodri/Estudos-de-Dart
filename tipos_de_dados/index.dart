main() {
  /* Valores númerico */

  int n1 = 10; //variável do tipo número inteiro
  double n2 = 12.50; //variável do tipo decimal
  num n3 =
      2; //variável numérica que pode receber tanto int quanto float, não muito usada. no caso de precisar de uma variável que receba tanto inteiro, quanto decimais, preferir usar double
  double negativoParaPositivo = -3.4.abs();
  var stringToNumber = int.parse('5512123456789');
  print(n1);
  print(n2);
  print(n3);
  print(negativoParaPositivo);
  print(stringToNumber);

  /* Valores de texto */
  // as variáveis de texto pode ser declarada com a palavra reservada String ou com o var.

  String nome = "Brendon";
  String telefone =
      "5521912345678"; //apesar de parecer uma variável numérica, se trata de um texto, pois foi declarado seu tipo e seu conteúdo está também entre aspas.
  print(nome.toUpperCase()); //converte todos as letras do texto em maísculas
  print(telefone);

  /* Tipo boleano */
  //como o nome já diz, aceita dois valores: true ou false;
  //tem como propósito definir se uma variável tem o valor falso ou verdadeira, para ser usada de diversas formas durante o código. geralmente quando se precisa fazer comparações ou condições
  bool verdadeiro = true;
  bool falso = false;
  print((verdadeiro, falso));

  /*Tipo dynamic */
  //É um dado de tipagem dinâmica, ou seja, tanto seu valor quanto sua tipagem pode ser redefinida durante sua existênciap

  dynamic dinamico = 'Começa como um texto';
  print(dinamico);
  dinamico = 20;
  print("agora é um int: " + dinamico.toString());
  dinamico = 21.5;
  print('Agora um double' + dinamico.runtimeType.toString());

  /* List */
  //é uma array e pode ser tipada tanto usando o List quanto o var e sua tipagem se não for definida, se torna dinâmica

  //definindo uma lista com o List, temo como padrão tipagem dinâmica, a não ser que você declare o tipo da lista
  List array = ['1', 2, 3, '4'];
  print((array, array.runtimeType));
  array = [10, 20];
  print((array, array.runtimeType));
  array = ['10', '20'];
  print((array, array.runtimeType));
  List inteiros = [1, 2, 3, 4, 5];
  print((array, inteiros.runtimeType));
  //declarando uma lista com o var, o padrão de tipagem seguido vai ser o da var
  var times = ['vasco', 'corinthians', 'américa'];
  //essa array é uma string e não pode ser reatribuídos valores de outros tipos/
  print((times, times.runtimeType));
  /* times = 10; ocorre erro ao tentar atribuir um valor do tipo numérico em uma var que recebeu inicialmente apenas strings*/
  var listaDinamica = [1, '1', 2, '2'];
  //essa array é uma lista do tipo objeto, pois foi atribuído valores de tipos diferentes na sua declaração.
  print((listaDinamica, listaDinamica.runtimeType));
  print((
    listaDinamica[0],
    listaDinamica[0].runtimeType
  )); //acessando um indice específico da array e verificando o tipo do dado
  print((listaDinamica[1], listaDinamica[1].runtimeType));

  /*Map */
  //é parecido com um objeto JSON, pois suas chaves precisam ser declaradas com aspas;
  //o map precisa receber uma chave e um valor. as chaves não podem se repetir e devem ser acompanhas de um valor (que podem se repetir)

  var contatos = {
    'mario': '12345667',
    'peach': '141414',
    'luigi': '2131313',
  };
  //map do tipo string, pois só recebe strings
  print((contatos, contatos.runtimeType));
  var sacolao = {'Maçã': 1.40, 'Banana': 2, 'Uva': false};
  //map do tipo dinâmico, pois recebe dados de vários tipos;
  print(sacolao);
}
