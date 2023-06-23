import 'dart:io';

main() {
  int iniciador = 0;
  for (iniciador; iniciador < 10; iniciador++) print(iniciador);
  for (int i = 100; i > 0; i -= 4) {
    print(i);
  }
  for (int impares = 1; impares < 100; impares += 2) print(impares);

  var iniciadorDeclarada = stdin.readLineSync()!;
  var iniciadorWhile = int.parse(iniciadorDeclarada);
  while (iniciadorWhile < 20) {
    iniciadorWhile += 2;
    print(iniciadorWhile);
  }
}
