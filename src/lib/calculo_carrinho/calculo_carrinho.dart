import 'package:deuquanto/calculo_carrinho/model/item_carrinho.dart';
import 'package:flutter/material.dart';

class CalculoCarrinho extends StatefulWidget {
  const CalculoCarrinho({super.key});

  @override
  State<CalculoCarrinho> createState() => _CalculoCarrinhoState();
}

class _CalculoCarrinhoState extends State<CalculoCarrinho> {
  List<ItemCarrinho> itensCarrinho = [];

  Widget buildPage() {
    if (itensCarrinho.isEmpty) {
      return const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'Inclua itens em um carrinho para calcular o valor total que você vai pagar.',
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      );
    } else {
      return const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 20,
          ),
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: MediaQuery.of(context).size.width * 0.10,
      ),
      child: Column(
        children: [
          buildPage(),
        ],
      ),
    );
  }
}
