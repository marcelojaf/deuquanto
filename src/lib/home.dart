import 'package:deuquanto/calculo_carrinho/calculo_carrinho.dart';
import 'package:deuquanto/calculo_individual.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final String nome;

  const Home({super.key, required this.nome});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentPageIndex == 0
          ? const CalculoIndividual()
          : const CalculoCarrinho(),
      appBar: AppBar(title: Text(widget.nome)),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.money),
            label: 'Calculo Individual',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Calculo de Compras',
          ),
        ],
        currentIndex: currentPageIndex,
        onTap: (value) => {
          setState(
            () {
              currentPageIndex = value;
            },
          )
        },
      ),
    );
  }
}
