int somaFn(int a, int b){
  return a + b;
}

main(){
  int a = 10; // Padrão
  // tipo, nome, valor

  int Function(int, int) soma_1 = somaFn;
  print(soma_1(1, 5));

  int Function(int, int) soma_2 = (int x, int y){ // Função anonima, pode ou não ter o tipo de x e y
    return x + y;
  };
  print(soma_2(1, 5));

  var soma_3 = (x, y){
    return x + y;
  };
  print(soma_3(1, 5));

  var soma_4 = (x, y) => x + y; //Função arrow
  print(soma_4(1, 5));
}