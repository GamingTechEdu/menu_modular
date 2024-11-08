import 'package:flutter/material.dart';
import 'package:menu_modular/export.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SimpleIconButton(
      maxWidth: 50,
      minWidth: 100,
      options: [
        OptionItem(
          onPressed: () => print("1"),
          id: "1",
          value: "Teste",
          icon: Icons.add,
        ),
        OptionItem(
          onPressed: () => print("2"),
          id: "1",
          value: "Teste",
          icon: Icons.refresh,
        ),
        OptionItem(
          onPressed: () => print("3"),
          id: "1",
          value: "Teste",
          icon: Icons.edit,
        ),
        OptionItem(
          onPressed: () => print("4"),
          id: "1",
          value: "Teste",
          icon: Icons.delete,
        )
      ],
    );
  }
}
