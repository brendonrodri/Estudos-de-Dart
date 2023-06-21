main(){
  var msg = 'Seu resultado é: '; //declarando variável com o 'var'você não precisa declarar o tipo
  //o tipo é atribuido de acordo com o valor
  int n1= 2; //variável do tipo inteiro
  double n2= 2.5;//variável do tipo double, aceita números decimais
  var res = n1 + n2; //o tipo da variável vai ser definido de acordo com o valor
  //como nesse caso possuímos uma variável do tipo double, res passa a ter o tipo double
  print(res.runtimeType); //runtimeType retorna o tipo da variável
  print(msg + res.toString()); //toString converte do tipo numérico para texto
}