import 'dart:io';

main(){
  // Assim que se faz um input de texto
  String inputUsuario = stdin.readLineSync()!;
  print(inputUsuario);

  print('Vamos calcular a área de uma circunferência pra ilustrar as contstantes\n');

  // const define uma constante com valor predefinido
  const pi = 3.14;

  // final define uma constante com valor ainda não definido
  // final pi = 3.14;

  // Outro jeito de dar print / Não pula linha
  stdout.write('Qual o raio da circunferência? ');
  final raio = stdin.readLineSync()!;

  final area = pi * double.parse(raio) * double.parse(raio);
  print('A área da circunferêcia é: ' + area.toString());
}