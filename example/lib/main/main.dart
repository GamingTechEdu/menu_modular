import 'package:flutter/material.dart';
import 'package:menu_modular/export.dart';

void main() {
  runApp(MaterialApp(home: const MyWidget()));
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MenuForm(
      builder: MenuFormData(
        buttons: [
          MenuFormItemDataTile(
            title: "Incluir SIMUC",
            icon: const Icon(Icons.add_box_outlined, size: 25),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyWidget(),
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



// class Example extends StatelessWidget {
//   Example({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: themeB,
//       home: const MyExample(),
//     );
//   }
// }

// class MyExample extends StatefulWidget {
//   const MyExample({super.key});

//   @override
//   State<MyExample> createState() => _MyExampleState();
// }

// class _MyExampleState extends State<MyExample> {
//   final KdlController kdlController = KdlController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: SimcardsManager(
//           controller: kdlController,
//           onOutput: (value) {
//             print("VALUE--->>>");
//             print(value);
//           },
//         ),
//       ),
//     );
//   }
// }