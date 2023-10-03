import 'package:deuquanto/widgets/custom_textformfield_value.dart';
import 'package:flutter/material.dart';

class CalculoIndividual extends StatefulWidget {
  const CalculoIndividual({super.key});

  @override
  State<CalculoIndividual> createState() => _CalculoIndividualState();
}

class _CalculoIndividualState extends State<CalculoIndividual> {
  var imposto = 13;
  var valorProduto = 0.0;
  var valorAPagar = 0.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: 8, horizontal: MediaQuery.of(context).size.width * 0.25),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text('Imposto: '),
          TextFormField(
            initialValue: imposto.toString(),
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            decoration: const InputDecoration(
              hintText: '0.00',
              labelText: '%',
              alignLabelWithHint: true,
              border: OutlineInputBorder(),
            ),
            textAlign: TextAlign.end,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text('Valor do produto:'),
          CustomTextFormFieldValue(
            setState: (value) {
              setState(
                () {
                  var newValue = value;
                  if (value.contains(",")) {
                    newValue = value.replaceAll(",", ".");
                  }
                  valorProduto = double.parse(newValue);
                },
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                valorAPagar = valorProduto + (valorProduto * (imposto / 100));
              });
            },
            child: const Text('Calcular'),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text('Você vai pagar:'),
          Text(
            '\$ ${valorAPagar.toStringAsFixed(2)}',
            style: const TextStyle(
              color: Colors.orange,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
