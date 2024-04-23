import 'package:flutter/material.dart';
import 'package:menu_modular/export.dart';
import 'package:menu_modular/export2.dart';

import 'config/config.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MenuForm(),
  ));
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