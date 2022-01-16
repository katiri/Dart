import 'dart:math';

void executar(Function fnPar, Function fnImpar){
  Random().nextInt(10) % 2 == 0 ? fnPar() : fnImpar();
}

void executarPor(int qnt, Function(String) fn, String valor){
  for(int i = 0; i < qnt; i++){
    fn(valor);
  }
}

main(){
  var mainFnPar = () => print('O valor é par');
  var mainFnImpar = () => print('O valor é impar');
  executar(mainFnPar, mainFnImpar);

  executarPor(10, print, 'Passando print como parametro');
}