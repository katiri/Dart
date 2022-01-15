import 'dart:io';

main(){
  // Aritméticos
  int a = 10;
  int b = 30;

  int soma = a + b;
  print(soma);
  
  print(a + b);
  print(a - b);
  print(a * b);
  print(a / b);
  print(a % b);

  print(a + 1);
  print(b - 2);
  print(5 * 2);
  print(5 / b);

  print((a + b) - 50 * 100.90);

  // Lógicos
  bool c = true;
  bool d = false;

  print(c && d); // AND
  print(c || d); // OR
  print(c ^ d); // XOR (Apenas um verdadeiro)
  print(!c); // NOT

  // Atribuição
  double e = 2;
  print(e);
  e = e + 3;
  print(e);
  e += 3;
  print(e);
  e -= 4;
  print(e);
  e *= 6;
  print(e);
  e /= 7;
  print(e);
  e %= 2;
  print(e);

  // Relacionais -> Resultado é sempre bool
  print(3 > 2);
  print(-6 < 1);
  print(3 >= 3);
  print(64 <= 6);
  print(6 == 6);
  print(4 != 6);
  print(3 == '3');

  print(4 + 5 > 4 - 9 && 3 / 4 != 12 / 16);

  // Incremento
  int f = 1;
  int g = 3;
  // f = f + 1;
  // f += 1;
  f++;
  f--;
  ++f;
  --f;

  print(f);

  print(f++ == --g); // f++ vem dps de ==
  print(++f == --g); // ++f vem antes de ==

  // Atribuição ternária
  stdout.write('Está chovendo? (s/N): ');
  String resposta = stdin.readLineSync()!;
  bool estaChovendo = resposta == 's';
  // bool estaChovendo = resposta == 's' ? true : false;

  stdout.write('Está frio? (s/N): ');
  bool estaFrio = stdin.readLineSync() == 's';

  String acao = estaChovendo || estaFrio ? 'Ficar em casa' : 'Sair';
  print(acao); 
  print(estaChovendo || estaFrio ? 'Azarado' : 'Sortudo');
}