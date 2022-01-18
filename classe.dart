class Data {
  int dia = 1;
  int mes = 1;
  int ano = 1970;

  // métodos
  String data_formatada(){
    return '$dia/$mes/$ano';
  }

  String toString(){ // Modificando o método já existente toString()
    return 'A data é $dia/$mes/$ano';
  }

  // método construtor
  // Data(int dia, int mes, int ano){ // Modificando o construtor padrão, new Data() já não funciona se n passar os parametros
  //   this.dia = dia;
  //   this.mes = mes;
  //   this.ano = ano;
  // } 
  // Data(this.dia, this.mes, this.ano); // Um jeito mais fácil de fazer o que está acima
  Data([this.dia = 1, this.mes = 1, this.ano= 1970]);

  // Construtor nomeado
  // Data.construtor([this.dia = 1, this.mes = 1, this.ano= 1970]); // Igual ao anterior
  Data.construtor({this.dia = 1, this.mes = 1, this.ano= 1970}); // Com parametros nomeados
  Data.ultimo_dia_ano(this.ano){
    dia = 31;
    mes = 12;
  }
}

main(){
  var data_1 = new Data(2, 2, 1972);
  // data_1.dia = 2;
  // data_1.mes = 2;
  // data_1.ano = 1972;

  print('${data_1.dia}/${data_1.mes}/${data_1.ano}');
  print(data_1.toString()); // toString e apenas exibir a variável é a mesma coisa
  print(data_1);

  print('\n');
  Data data_2 = Data();
  data_2.dia = 30;
  data_2.mes = 1;
  data_2.ano = 1014;

  // print('${data_2.dia}/${data_2.mes}/${data_2.ano}');
  print(data_2.data_formatada());
  print(data_2.toString());
  print(data_2);

  print('\n');
  // Com o novo construtor Data([this.dia = 1, this.mes = 1, this.ano = 1970]);
  print(Data());
  print(Data(3));
  print(Data(3, 4));
  print(Data(3, 4, 2022));

  print('\n');
  // Com o construtor nomeado e parametros nomeados
  print(Data.construtor());
  print(Data.construtor(dia: 3));
  print(Data.construtor(mes: 4));
  print(Data.construtor(ano: 2022));

  print('\n${Data.ultimo_dia_ano(2023)}');
}