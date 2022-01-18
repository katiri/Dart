class Carro{
  final velocidade_max;
  int _velocidade_atual = 0;

  int acelerar(){
    if(_velocidade_atual + 5 <= velocidade_max){
      _velocidade_atual += 5;
    }
    else{
      _velocidade_atual = velocidade_max;
    }

    return _velocidade_atual;
  }

  int frear(){
    if(_velocidade_atual - 5 >= 0){
      _velocidade_atual -= 5;
    }
    else{
      _velocidade_atual = 0;
    }

    return _velocidade_atual;
  }

  bool esta_no_limite(){
    return _velocidade_atual == velocidade_max;
  }

  Carro(this.velocidade_max);

  // Getter
  int get velocidade_atual{
    return this._velocidade_atual;
  }

  // Setter
  void set velocidade_atual(int valor){
    bool delta = (_velocidade_atual - valor).abs() <= 5;
    if(delta && valor >= 0 && _velocidade_atual + valor > velocidade_max){
      this._velocidade_atual = valor;
    }
  }
}