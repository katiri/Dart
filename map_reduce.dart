main(){
  // map
  List<Map<String, Object>> alunos = [
    {'nome': 'João', 'nota': 7.0},
    {'nome': 'Beatriz', 'nota': 9.8},
    {'nome': 'Gabi', 'nota': 8.4},
    {'nome': 'Guilherme', 'nota': 2.0},
    {'nome': 'Rodrigo', 'nota': 6.7},
    {'nome': 'Amanda', 'nota': 8.3},
  ];

  String Function(Map) pegar_nomes = (aluno) => aluno['nome'];

  var nomes = alunos.map(pegar_nomes);
  print(nomes);

  double Function(Map) pegar_notas = (aluno) => aluno['nota'];

  var notas = alunos.map(pegar_notas);
  print(notas);

  // reduce
  List<double> pontos = [8.2, 7.1, 6.2, 4.4, 3.9, 8.8, 9.1, 5.1];
  
  // double total = 0;
  // for(double ponto in pontos){
  //   total += ponto;
  // }

  // Criar função somar
  double total = pontos.reduce(somar);

  print(total);

  // map, reduce e filter
  int parametro = 5;

  double total_notas_altas = alunos
    .map((aluno) => aluno['nota']) // Lista as notas dos alunos
    .map((nota) => nota as double) // Transforma os elementos Object em double
    .where((nota) => nota >= parametro) // Lista das notas maiores ou iguais a parametro
    .reduce((a, b) => a + b); // Soma os elementos
  
  int qnt = alunos.map((aluno) => aluno['nota'] as double).where((nota) => nota >= parametro).length;

  print(total_notas_altas);
  print('A média das melhores notas dos alunos é ${total_notas_altas / qnt}');
}

double somar(double a, double b){
  // print('$a $b');
  return a + b;
}