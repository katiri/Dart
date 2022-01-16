main(){
  print('Olá mundo!');

  // O meu
  List cerquilhas = ['#', '##', '###', '####', '#####', '######'];
  for(String cerquilha in cerquilhas){
    print(cerquilha);
  }

  // O da aula
  for(String c = '#'; c != '#######'; c += '#'){
    print(c);
  }
}