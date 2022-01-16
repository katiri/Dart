main(){
  int i;

  for(i = 0; i < 10; i++)
    print(i);
  
  for(int i = 0; i < 10; i += 2){
    print('Dentro do segundo for');
    print(i);
  }

  for(int i = 100; i >= 0; i -= 4){
    print(i);
  }

  List notas = [8.9, 9.4, 7.0, 3.4, 6.5];
  for(int i = 0; i < notas.length; i++){
    print(notas[i]);
  }

  print('\n');
  // For In
  for(double nota in notas){ // Notas também poderia ser um Set que funcionaria
    print(nota);
  }

  print('\n');
  // For com Map
  Map<String, double> notas_alunos = {
    'João': 9.1,
    'Beatriz': 10,
    'Maria': 7.0,
    'Thiago': 9.5,
    'Gabi': 8.5,
  };

  for(String nome in notas_alunos.keys){
    print(nome);
    print(notas_alunos[nome]);
  }

  for(double nota in notas_alunos.values){
    print(nota);
  }

  // print(notas_alunos.entries);
  for(var registro in notas_alunos.entries){
    print(registro);
    print('${registro.key}: ${registro.value}');
  }
}