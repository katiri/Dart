import 'dart:io';

main(){
  int i = 0;
  while(i < 10){
    print(i);
    i++;
  }

  stdout.write('Digite algo ou sair: ');
  String digitado = stdin.readLineSync()!;

  while(digitado != 'sair'){
    stdout.write('Digite algo ou sair: ');
    digitado = stdin.readLineSync()!;
  }

  print('Você saiu!');

  print('\n');
  // Do While -> O bloco é executado pelo menos uma vez antes do teste

  digitado = 'entrar';
  do{
    stdout.write('Digite algo ou entrar: ');
    digitado = stdin.readLineSync()!;
  }
  while(digitado != 'entrar');
}