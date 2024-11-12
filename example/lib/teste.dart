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
          id: "1",
          value: "Teste",
          icon: Icons.add,
          onPressed: () => print("1"),
          isPopUp: true,
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            const PopupMenuItem<String>(
              value: 'incluirSimuc',
              child: Text('Incluir Simuc'),
            ),
            const PopupMenuItem<String>(
              value: 'incluirSrecuperacao',
              child: Text('Incluir S/ Recuperação'),
            ),
            const PopupMenuItem<String>(
              value: 'Opção 3',
              child: Text('Opção 3'),
            ),
          ],
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
