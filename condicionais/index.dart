/* 
import "dart:math";

main() {
  var nota = Random().nextInt(11);
  print(nota);
  if (nota >= 7) {
    print('aprovado');
  } else if (nota >= 5 && nota < 7) {
    print('recuperação');
  } else if (nota < 5) print('reprovado');
} */
import "dart:io";

main() {
  const nomeDoUsuario = 'brendon';
  const idadeMinima = 18;

  print('Informe seu nome');
  final nome = stdin.readLineSync()!;
  print('Informe sua idade');
  var idadeDeclarada = stdin.readLineSync()!;
  var idadeFinal = int.parse(idadeDeclarada);

  if (idadeFinal >= idadeMinima || nome == nomeDoUsuario) {
    print('Pode entrar// comparação por idade ou nome');
  } else if (nome.isEmpty) {
    if (idadeFinal >= idadeMinima) {
      print(
          'Pode entrar//comparação se o nome estiver vazio, mas a idade for maior que idadeMinima');
    }
  } else if (idadeDeclarada.isEmpty) {
    if (nome == nomeDoUsuario) {
      print(
          'Pode entrar //comparação se a idade estiver vazia, mas o nome estiver na lista');
    }
  } else if (idadeFinal < idadeMinima) {
    print('não pode entrar//comparação menor de idade');
  }
}
