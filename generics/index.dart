/* Generics */
//A função do generic é definir um tipo da sua variável por padrão no momento em que ela for declarada.
//assim mantém o código mais seguro, pois seu tipo nunca vai poder ser alterado.

main() {
  //array de objetos tipada como dinâmica, para receber todo tipo de dado
  List mapList = <dynamic>[
    {
      'nome': 'Brendon',
      'idade': 25,
    },
    {
      'nome': 'Paulo',
      'idade': 10,
    }
  ];
  print(mapList);
  // lista tipada como string
  var list = <String>['a', 'b', 'c', 'd', 'e'];
  //var list = <int>['a', 'b', 'c', 'd', 'e'];
  //nesse caso retornará erro de compilação, pois a lista foi tipada como inteiro

  //tipagem e atribuição feita corretamente
  var intList = <int>[1, 2, 3, 4, 5];
  var doubleList = <double>[1.2, 2.3, 3.104, 3.1415];
  print(intList);
  print(list.runtimeType);
  print(doubleList.runtimeType);

  /* Para declarar um tipo no Map precisamos passar dois valores entre < >. A tipagem da key
      e o tipagem do valor
   */
  //map do tipo string, string
  Map alunos = <String, String>{
    'Mag': 'biologia',
    'Moana': 'ed.fisica',
    'Paulo': 'artes'
  };
  print((alunos, alunos.runtimeType));

  //map do tipo int, string
  Map turma = <int, String>{1: 'Mag', 2: 'Moana', 3: 'Paulo'};
  print((turma, turma.runtimeType));

  //map do tipo string, double
  var notas = <String, double>{
    'biologia': 8.0,
    'ed. fisica': 10.0,
    'artes': 9.9
  };

  print(notas);

  //template string foi usado no lugar da concatenação para juntar uma string com outros tipos de objetos
  var resultado =
      'O aluno ${turma[intList[0]]} foi aprovado em ${alunos[turma[1]]} com a nota: ${notas[alunos['Mag']]} ';
  print(resultado);
}
