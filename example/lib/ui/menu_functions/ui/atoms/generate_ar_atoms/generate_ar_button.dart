import 'package:flutter/material.dart';

class GenerateArButton extends StatelessWidget {
  const GenerateArButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 35,
      child: TextButton(
        onPressed: () {},
        child: const Text("Gerar"),
      ),
    );
  }
}
