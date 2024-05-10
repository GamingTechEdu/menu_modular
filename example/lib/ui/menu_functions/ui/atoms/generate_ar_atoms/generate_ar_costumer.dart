import 'package:flutter/material.dart';

class GenerateArCostumer extends StatelessWidget {
  const GenerateArCostumer({super.key});

  @override
  Widget build(BuildContext context) {
    BorderRadius borderRadius = BorderRadius.circular(5);

    List<String> costumerList = [
      'Selecione um Cliente',
      'ILUMINA SP',
      'GUARULHOS LUZ',
      'TERESINA LUZ',
    ];
    String selectedCostumer = costumerList[0];

    return DropdownButtonFormField<String>(
      elevation: 1,
      isDense: true,
      isExpanded: false,
      icon: const Icon(Icons.keyboard_arrow_down_outlined),
      focusColor: Colors.transparent,
      borderRadius: borderRadius,
      value: selectedCostumer,
      items: costumerList.map((costumer) {
        return DropdownMenuItem<String>(
          value: costumer,
          child: Text(costumer),
        );
      }).toList(),
      onChanged: (value) {},
    );
  }
}
