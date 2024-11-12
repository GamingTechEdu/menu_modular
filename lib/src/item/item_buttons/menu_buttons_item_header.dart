import 'package:flutter/material.dart';
import '../../../export.dart';

class ButtonFormItemHeader extends StatefulWidget {
  final HeaderRowDataButtons data;
  const ButtonFormItemHeader({super.key, required this.data});

  @override
  State<ButtonFormItemHeader> createState() => _ButtonFormItemHeaderState();
}

class _ButtonFormItemHeaderState extends State<ButtonFormItemHeader> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      onPressed: () => widget.data.onPressed(),
      icon: widget.data.icon!,
    );
  }
}

// PopupMenuButton<String>(
//       icon: widget.data.icon!, // Ícone do botão
//       color: widget.data.backgroundColor, // Cor de fundo do popup
//       onSelected: (String value) {
//         // Ação quando uma opção for selecionada
//         print("Opção selecionada: $value");
//         // Chame uma função ou modifique o estado conforme necessário
//       },
//       itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
//         const PopupMenuItem<String>(
//           value: 'Opção 1',
//           child: Text('Incluir Simuc'),
//         ),
//         const PopupMenuItem<String>(
//           value: 'Opção 2',
//           child: Text('Opção 2'),
//         ),
//         const PopupMenuItem<String>(
//           value: 'Opção 3',
//           child: Text('Opção 3'),
//         ),
//       ],
//     );