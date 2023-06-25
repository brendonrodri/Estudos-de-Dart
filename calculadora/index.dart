import 'dart:io';

main() {
  calculadora();
}

var somar = (double n1, double n2) => n1 + n2;
var subtracao = (double n1, double n2) => n1 - n2;

double multi(double n1, double n2) {
  return n1 * n2;
}

double divi(double n1, double n2) {
  return n1 / n2;
}

void operacoes(List<double> numbers, String operador) {
  double n1 = numbers[0];
  double n2 = numbers[1];
  String end = 'sim';
  while (end == 'sim') {
    if (operador == '+')
      print(somar(n1, n2));
    else if (operador == '-')
      print(subtracao(n1, n2));
    else if (operador == '*')
      print(multi(n1, n2));
    else if (operador == '/') print(divi(n1, n2));
    print('Deseja realizar outra operaçao? Escreva sim ou nao');
    end = stdin.readLineSync()!;
    print('Tchau');
  }
}

void calculadora() {
  var isEmpty = true;
  var readingNumberOne = '';
  var readingNumberTwo = '';
  var readingOperator = '';

  while (isEmpty) {
    print('Informe o primeiro número');
    readingNumberOne = stdin.readLineSync()!;
    print('Informe o segundo número');
    readingNumberTwo = stdin.readLineSync()!;
    print('Selecione o operador entre: + - / *');
    readingOperator = stdin.readLineSync()!;

    if (readingNumberOne.isNotEmpty &&
        readingNumberTwo.isNotEmpty &&
        readingOperator.isNotEmpty) {
      double numberOne = double.parse(readingNumberOne);
      double numberTwo = double.parse(readingNumberTwo);
      String operator = readingOperator;
      print(
          "Primeiro número: $numberOne\nSegundo número: $numberTwo\nOperador: $operator");
      /* isEmpty = false;
 */
      operacoes([numberOne, numberTwo], operator);
    } else {
      print("Os números estão vazios");
    }
  }
}
