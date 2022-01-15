main(){
  String nome = 'João';
  String status = 'aprovado';
  double nota = 9.8;

  String frase_1 = nome + ' está ' + status + ' pois sua nota foi ' + nota.toString() + '!';
  print(frase_1);

  String frase_2 = '$nome está $status pois sua nota foi $nota!';
  print(frase_2);

  print('$nome');
  print('\$nome');

  print('1 + 1 = ${1 + 1}');
  print('${nota.toString()}'); // Não precisa
}