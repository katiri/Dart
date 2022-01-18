import 'dart:io';
import '../modelo/carro.dart';

main(){
  stdout.write('Qual a velocidade máxima do carro? ');
  dynamic velocidade_max = stdin.readLineSync()!;
  velocidade_max = int.parse(velocidade_max);

  Carro carro = Carro(velocidade_max);

  while(!carro.esta_no_limite()){
    print('A velocidade atual do carro é ${carro.acelerar()}');
    print(carro.esta_no_limite() ? 'O carro está na velocidade máxima' : 'O carro está acelerando');
  }

  while(carro.velocidade_atual > 0){
    print('A velocidade atual do carro é ${carro.frear()}');
    print(carro.velocidade_atual == 0 ? 'O carro parou' : 'O carro está freando');
  }
}