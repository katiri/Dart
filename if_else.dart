import 'dart:math';

main(){
  int nota = Random().nextInt(11);
  print('A nota do aluno foi $nota');

  if(nota > 7)
    print('Aprovado');
    // Nesse caso if vai executar o que estiver imediatamente abaixo, pra comandos unicos funciona, para vários usar {}
  else if(nota >= 5)
    print('Recuperação');
  else
    print('Reprovado');

  if(nota > 7){
    print('Parabéns');
    print('Você foi aprovado');
  }
  else if(nota >= 5){
    print('Quase!');
    print('Você está de recuperação');
  }
  else{
    print('Sinto muito');
    print('Você foi reprovado');
  }
}