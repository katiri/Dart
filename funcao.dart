import 'dart:math';

main(){
  // int a = 4;
  // int b = 40;
  // print(a + b);
  somar(4, 40);

  int c = 1;
  int d = 6;
  // print(c, d);
  somar(c, d);

  somaAleatoria();

  // -----------------------------------------------------

  int soma = somarComResultado(4, 6);
  print(soma);

  // -----------------------------------------------------

  juntar('a', 'b');
  juntar('a', 10);
  juntar(10.6, 10);
  juntar(10.6, 'b');

  // -----------------------------------------------------

  print(parametrosOpcionais(50));
  print(parametrosOpcionais());
  
  data();
  data(12, 6, 2001);
  data(12, 6);
  data(12);

  // -----------------------------------------------------

  parametrosNomeados(nome: 'João', idade: 20);
  parametrosNomeados(idade: 20, nome: 'Beatriz');

}

// -----------------------------------------------------

void somar(int a, int b){ // void diz que a função não retorna nada (Não precisa)
  print(a + b);
}

void somaAleatoria(){
  int a = Random().nextInt(11);
  int b = Random().nextInt(11);
  print('Os valores sorteados foram: $a e $b');
  print('A soma é ${a + b}');
}

// -----------------------------------------------------

int somarComResultado(int a, int b){ // int diz que a função não retorna um inteiro (Não precisa)
  return a + b;
}

// -----------------------------------------------------

juntar(dynamic a, b){
  print(a.toString() + b.toString());
}

// -----------------------------------------------------

int parametrosOpcionais([int a = 11]){
  return Random().nextInt(a);
}

data([int dia = 1, int mes = 1, int ano = 1970]){
  print('$dia/$mes/$ano');
}

// -----------------------------------------------------

parametrosNomeados({nome, idade}){
  print('Olá $nome, você tem $idade!');
}