import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GenerateArUser extends StatelessWidget {
  const GenerateArUser({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Usuário"),
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(10),
      ],
    );
  }
}
