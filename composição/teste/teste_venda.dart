import '../modelos/clientes.dart';
import '../modelos/venda.dart';
import '../modelos/venda_item.dart';
import '../modelos/produto.dart';

main(){
  // Meu jeito
  Cliente cliente = Cliente(nome: 'João Pedro', cpf: '47272545810');

  Produto produto_1 = Produto(codigo: 1, nome: 'Bala', preco: 2.0);
  Produto produto_2 = Produto(codigo: 2, nome: 'Chocolate', preco: 5.0, desconto: 0.2);
  Produto produto_3 = Produto(codigo: 3, nome: 'Salgadinho', preco: 7.5, desconto: 0.3);

  VendaItem venda_item_1 = VendaItem(produto: produto_1, quantidade: 10);
  VendaItem venda_item_2 = VendaItem(produto: produto_3, quantidade: 2);

  Venda venda_1 = Venda(cliente: cliente, itens: [venda_item_1, venda_item_2]);

  print('Notinha venda 1:');
  for(VendaItem item in venda_1.itens){
    print('${item.produto.nome} - 1x R\$ ${item.preco} - ${item.quantidade}x R\$ ${item.quantidade * item.preco}');
  }
  print('Total: R\$ ${venda_1.valor_total}');

  // Jeito da aula
  Venda venda_2 = Venda(
    cliente: Cliente(
      nome: 'Beatriz', 
      cpf: '43547020510'
    ),
    itens: [
      VendaItem(
        produto: Produto(
          codigo: 4,
          nome: 'Salada',
          preco: 6.0
        ),
        quantidade: 7
      ),
      VendaItem(
        produto: Produto(
          codigo: 5,
          nome: 'Pão',
          preco: 2.0,
          desconto: 0.1
        ),
        quantidade: 10
      )
    ]
  );

  print('\nNotinha venda 2:');
  for(VendaItem item in venda_2.itens){
    print('${item.produto.nome} - 1x R\$ ${item.preco} - ${item.quantidade}x R\$ ${item.quantidade * item.preco}');
  }
  print('Total: R\$ ${venda_2.valor_total}');
}