Object segundoElementoV1(List lista){
  return lista.length >= 2 ? lista[1] : 'A lista tem menos de 2 elementos';
}

segundoElementoV2<E>(List<E> lista){
  return lista.length >= 2 ? lista[1] : 'A lista tem menos de 2 elementos';
}

main(){
  List<int> lista = [3, 5, 8, 32, 541, 4, 60];
  print(segundoElementoV1(lista));
  print(segundoElementoV2<int>(lista));
}