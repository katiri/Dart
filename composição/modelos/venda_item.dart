import 'produto.dart';

class VendaItem{
  Produto produto;
  int quantidade;
  dynamic _preco;

  VendaItem({required this.produto, this.quantidade = 1});

  double get preco{
    if(produto != null && _preco == null){
      _preco = produto.precoComDesconto;
    }
    return _preco;
  }

  void set preco(double novoPreco){
    if(novoPreco > 0){
      _preco = novoPreco;
    }
  }
}