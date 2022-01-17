List<tipo> filtrar<tipo>(List<tipo> lista, bool Function(tipo) fn){
  List<tipo> listaFiltrada = [];
  for(tipo elemento in lista){
     if(fn(elemento)){
        listaFiltrada.add(elemento);
     }
  }
  return listaFiltrada;
}

main(){
  List notas = [8.2, 7.1, 6.2, 4.4, 3.9, 8.8, 9.1, 5.1];

  // Jeito 1 -> Filtrando apenas notas >= 7
  List notas_boas_1 = [];
  for(double nota in notas){
    if(nota >= 7){
      notas_boas_1.add(nota);
    }
  }

  // Jeito 2
  bool Function(dynamic) notas_boas_2_Fn = (nota) => nota >= 7; 
  var notas_boas_2 = notas.where(notas_boas_2_Fn);

  // Jeito 3 -> Criando o próprio where
  // Função filtrar
  bool Function(dynamic) notas_boas_3_Fn = (nota) => nota >= 7;
  List notas_boas_3 = filtrar(notas, notas_boas_3_Fn);

  print(notas);
  print(notas_boas_1);
  print(notas_boas_2);
  print(notas_boas_3);
}