main(){
  // Chamadas encadeadas com .

  double nota = 6.98.roundToDouble();
  print(nota);

  print('texto'.toUpperCase());

  String texto_1 = 'joão pedro';
  String texto_2 = texto_1.substring(0, 4);
  String texto_3 = texto_2.toUpperCase();
  String texto_4 = texto_3.padRight(15, '!');
  print(texto_2);
  print(texto_3);
  print(texto_4);

  String texto_5 = 'joão pedro'.substring(0, 4).toUpperCase().padRight(15, '!');
  print(texto_5);
}