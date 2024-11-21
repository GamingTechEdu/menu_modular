import 'package:flutter/material.dart';
import 'package:menu_modular/export.dart';

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
    return MenuButtonsBody(
      data: MenuButtonsData(
        paddingHorizontalHeader: 5,
        paddingExternalHeader: const EdgeInsets.only(bottom: 0.0),
        headerButtons: [
          HeaderRowDataButtons(
            onPressed: () => print("01"),
            icon: const Icon(Icons.add),
          ),
          HeaderRowDataButtons(
            onPressed: () => print("02"),
            icon: const Icon(Icons.refresh),
          ),
          HeaderRowDataButtons(
            onPressed: () => print("03"),
            icon: const Icon(Icons.add),
          ),
        ],
        buttons: [
          MenuButtonsItemDataTile(
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
          MenuButtonsItemDataTile(
              title: "Editar aaaaaaSIMUC",
              icon: const Icon(Icons.place),
              onTap: () {}),
          MenuButtonsItemDataTile(
              title: "Exportar Relatório",
              icon: const Icon(Icons.play_arrow),
              onTap: () {}),
          MenuButtonsItemDataTile(
            title: "Excluir SIMUC",
            icon: const Icon(Icons.cabin),
            onTap: () {},
          ),
        ],
        tableModular: TableModularItem(
          color: Colors.red
        )

      ),
    );
  }
}
