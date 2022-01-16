import 'dart:math';

main(){
  int nota = Random().nextInt(11);
  print(nota);

  switch(nota){
    case 10:
      print('Nota máxima');
      break;
    case 9: case 8: case 7:
      print('Aprovado');
      break;
    case 6:
    case 5:
      print('Recuperação');
      break;
    default:
      print('Reprovado');
  }
}