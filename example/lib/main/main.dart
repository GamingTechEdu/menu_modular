import 'package:flutter/material.dart';

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
    return const Scaffold(
      body: MenuFunctionsManager()
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

// MenuFormBody(
//         data: MenuFormData(
//           buttons: [
//             MenuFormItemDataTile(
//               title: "Incluir",
//               icon: const Icon(Icons.add_box_outlined),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => const Teste(),
//                   ),
//                 );
//               },
//             ),
//             MenuFormItemDataTile(
//                 title: "Editar SIMUC",
//                 icon: const Icon(Icons.place),
//                 onTap: () {}),
//             MenuFormItemDataTile(
//                 title: "Exportar Relatório",
//                 icon: const Icon(Icons.play_arrow),
//                 onTap: () {}),
//             MenuFormItemDataTile(
//                 title: "Excluir SIMUC",
//                 icon: const Icon(Icons.cabin),
//                 onTap: () {}),
//           ],
//         ),
//       ),
//     );