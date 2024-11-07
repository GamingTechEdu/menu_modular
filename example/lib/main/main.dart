import 'package:flutter/material.dart';
import 'package:menu_modular/export.dart';

import '../ui/menu_functions/menu_functions.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    ),
  );
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Teste());
  }
}

class Teste extends StatelessWidget {
  const Teste({super.key});

  @override
  Widget build(BuildContext context) {
    return MenuFormBody(
      data: MenuFormData(
        paddingHorizontalHeader: 5,
        paddingExternalHeader: const EdgeInsets.only(bottom: 0.0),
        headerButtons: [
          HeaderRowDataButtons(
            onPressed: () => print("01"),
            icon: const Icon(Icons.add),
            backgroundColor: Colors.red,
          ),
          HeaderRowDataButtons(
            onPressed: () => print("02"),
            icon: const Icon(Icons.refresh),
            backgroundColor: Colors.green,
          ),
          HeaderRowDataButtons(
            onPressed: () => print("03"),
            icon: const Icon(Icons.add),
            backgroundColor: Colors.red,
          ),
          TextHeaderRowDataButtons(onTap: () {}, title: "Teste1")
        ],
        buttons: [
          MenuFormItemDataTile(
            title: "Incluir",
            icon: const Icon(Icons.add_box_outlined),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Teste(),
                ),
              );
            },
          ),
          MenuFormItemDataTile(
              title: "Editar aaaaaaSIMUC",
              icon: const Icon(Icons.place),
              onTap: () {}),
          MenuFormItemDataTile(
              title: "Exportar Relatório",
              icon: const Icon(Icons.play_arrow),
              onTap: () {}),
          MenuFormItemDataTile(
            title: "Excluir SIMUC",
            icon: const Icon(Icons.cabin),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
