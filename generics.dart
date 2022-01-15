main(){
  List coisas = ['Bola', true, 123, 5.90, [1, 2, 3]];
  List<String> strings = ['João', 'Banana', 'Maçã'];
  // strings.add(123); -> Dá erro pois o <String> só permite valores do tipo String

  Map<String, double> salarios = {
    'gerente': 1000.00,
    'atendente': 500.00,
    'tecnico': 900.00,
    'chefe': 2000, // -> É convertido
    // 'socios': '20000', -> Dá erro
    // 2000: 'chefe', -> Dá erro
  };

  print(salarios);
}