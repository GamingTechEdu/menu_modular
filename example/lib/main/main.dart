import 'package:flutter/material.dart';
import 'package:menu_modular/export.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    ),
  );
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MenuFormBody(
        data: MenuFormData(
          buttons: [
            MenuFormItemDataTile(
              title: "Incluir SIMUC",
              icon: const Icon(Icons.add_box_outlined, size: 25),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Teste(),
                  ),
                );
              },
            ),
            MenuFormItemDataTile(
                title: "Editar SIMUC",
                icon: const Icon(Icons.place, size: 25),
                onPressed: () {}),
            MenuFormItemDataTile(
                title: "Exportar Relatório",
                icon: const Icon(Icons.play_arrow, size: 25),
                onPressed: () {}),
            MenuFormItemDataTile(
                title: "Excluir SIMUC",
                icon: const Icon(Icons.cabin, size: 25),
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}

class Teste extends StatelessWidget {
  const Teste({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}