main(){
  // Números
  int inteiro = 3;
  double pontoflutuante = -3.14;
  
  // Modulo:
  print(pontoflutuante.abs());

  num numero = 4;
  print(numero);
  numero = 4.5;
  print(numero);

  // Texto
  String texto_1 = 'Bom';
  String texto_2 = ' dia!';

  print(texto_1 + texto_2 + ' Como você está?');
  print(texto_1.toUpperCase());
  print(texto_1.toLowerCase());

  // Booleano
  bool chuva = true;
  bool calor = false;

  // dynamic
  dynamic x = 'Recebe um texto';
  print(x);

  x = 123;
  print(x);

  x = true;
  print(x);

  x = 3.5432;
  print(x);

  // List
  List nomes = ['João', 'Beatriz', 'Maria', 'Thiago', 'Gabi'];
  // var nomes = ['João', 'Beatriz', 'Maria', 'Thiago', 'Gabi'];
  print(nomes);
  print(nomes[2]);
  print(nomes.elementAt(2));
  print(nomes.length);

  // Map
  Map telefones = {
    'João': '(11) 98921-4401',
    'Beatriz': '(11) 94321-4738',
  };

  print(telefones);
  print(telefones['João']);
  print(telefones.length);
  print(telefones.keys);
  print(telefones.values);
  print(telefones.entries);

  // Set: não idexado, não aceita repetição
  Set times = {'Vasco', 'Flamengo', 'Palmeiras'};
  print(times);
  times.add('São Paulo');
  print(times);
  print(times.length);
  print(times.contains('Vasco'));
  print(times.first);
  print(times.last);
}