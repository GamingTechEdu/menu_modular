import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GenerateArDocEntrance extends StatefulWidget {
  const GenerateArDocEntrance({super.key});

  @override
  State<GenerateArDocEntrance> createState() => _GenerateArDocEntranceState();
}

class _GenerateArDocEntranceState extends State<GenerateArDocEntrance> {
  @override
  Widget build(BuildContext context) {
    // bool isChecked = false;
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(labelText: "Doc. de Entrada"),
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(10),
          ],
        ),
        // Row(
        //   children: [
        //     Checkbox(
        //       value: isChecked,
        //       onChanged: (bool? value) {
        //         setState(() {
        //           isChecked = value!;
        //         });
        //       },
        //     ),
        //     const Text("Sem Documento")
        //   ],
        // )
      ],
    );
  }
}
