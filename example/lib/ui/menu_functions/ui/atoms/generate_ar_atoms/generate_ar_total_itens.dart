import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GenerateArTotalItens extends StatelessWidget {
  const GenerateArTotalItens({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Qutd. Total Itens"),
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(10),
      ],
    );
  }
}
