import 'package:flutter/material.dart';

class CustomTextFormFieldValue extends StatelessWidget {
  final Function setState;

  const CustomTextFormFieldValue({super.key, required this.setState});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      decoration: const InputDecoration(
        hintText: '0.00',
        labelText: '\$',
        border: OutlineInputBorder(),
      ),
      textAlign: TextAlign.end,
      onChanged: (value) => {
        setState(value),
      },
    );
  }
}
