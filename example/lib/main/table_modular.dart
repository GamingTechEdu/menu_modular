import 'package:flutter/material.dart';
import 'package:menu_modular/export.dart';

// void main() {
//   runApp(
//     const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: TableBodyContainer(
//           width: MediaQuery.of(context).size.width,
//           height: 200,
//           title: "Defeito Relatado",
//           widgets: [
//             TableDefects(
//               width: 150,
//               header: TableItemHeaderData(
//                 label: 'Defeitos',
//               ),
//               data: [
//                 TableItemRowsData(label: "Corrente Baixa", valueCheckBox: "1"),
//                 TableItemRowsData(label: "Tensão Alta", valueCheckBox: "2"),
//                 TableItemRowsData(label: "Tensão Baixa", valueCheckBox: "3"),
//                 TableItemRowsData(label: "Água Interna", valueCheckBox: "4"),
//                 TableItemRowsData(
//                     label: "Surto de Energia", valueCheckBox: "5"),
//                 TableItemRowsData(label: "Lux Alto", valueCheckBox: "6"),
//                 TableItemRowsData(label: "Erro de Rádio", valueCheckBox: "7"),
//                 TableItemRowsData(label: "Lux Baixo", valueCheckBox: "8"),
//               ],
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 InkWell(
//                   focusColor: Colors.transparent,
//                   hoverColor: Colors.transparent,
//                   highlightColor: Colors.transparent,
//                   overlayColor: WidgetStateProperty.all(Colors.transparent),
//                   child: const Icon(
//                     Icons.keyboard_double_arrow_right_rounded,
//                     size: 35,
//                   ),
//                   onTap: () => {print("forward")},
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 InkWell(
//                   focusColor: Colors.transparent,
//                   hoverColor: Colors.transparent,
//                   highlightColor: Colors.transparent,
//                   overlayColor: WidgetStateProperty.all(Colors.transparent),
//                   child: const Icon(
//                     Icons.keyboard_double_arrow_left_rounded,
//                     size: 35,
//                   ),
//                   onTap: () => {print("back")},
//                 ),
//               ],
//             ),
//             TableDefects(
//               width: 150,
//               header: TableItemHeaderData(
//                 label: 'Defeitos Atribuídos',
//               ),
//               // data: [
//               //   TableItemRowsData(label: "Corrente Baixa", valueCheckBox: "1"),
//               //   TableItemRowsData(label: "Tensão Alta", valueCheckBox: "2"),
//               //   TableItemRowsData(label: "Tensão Baixa", valueCheckBox: "3"),
//               //   TableItemRowsData(label: "Água Interna", valueCheckBox: "4"),
//               //   TableItemRowsData(label: "Surto de Energia", valueCheckBox: "5"),
//               //   TableItemRowsData(label: "Lux Alto", valueCheckBox: "6"),
//               //   TableItemRowsData(label: "Erro de Rádio", valueCheckBox: "7"),
//               //   TableItemRowsData(label: "Lux Baixo", valueCheckBox: "8"),
//               // ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(
//     const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: TableDefects(
//           width: 150,
//           header: TableItemHeaderData(
//             label: 'Defeitos',
//           ),
//           data: [
//             TableItemRowsData(label: "Corrente Baixa", valueCheckBox: "1"),
//             TableItemRowsData(label: "Tensão Alta", valueCheckBox: "2"),
//             TableItemRowsData(label: "Tensão Baixa", valueCheckBox: "3"),
//             TableItemRowsData(label: "Água Interna", valueCheckBox: "4"),
//             TableItemRowsData(label: "Surto de Energia", valueCheckBox: "5"),
//             TableItemRowsData(label: "Lux Alto", valueCheckBox: "6"),
//             TableItemRowsData(label: "Erro de Rádio", valueCheckBox: "7"),
//             TableItemRowsData(label: "Lux Baixo", valueCheckBox: "8"),
//           ],
//         ),
//       ),
//     );
//   }
// }
