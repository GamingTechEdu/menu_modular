import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'data/table/table_header_item_data.dart';
import 'item/item.dart';

List<TableHeaderData> teste = [
  TableHeaderData(label: "Defeitos1"),
  TableHeaderData(label: "Defeitos2"),
];

class TableModular extends StatelessWidget {
  const TableModular({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFBAB8B8), width: 4),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          TableItemHeader(
            data: TableHeaderData(
              label: 'Defeitos',
            ),
          ),
          TableRows(
            data: TableRowsData(
              label: [
              "Corrente Baixa",
              "Corrente Alta",
              "Tensão Alta",
              "Tensão Baixa",
              "Água Interna",
              "Surto de Energia",
              "Lux Alto",
              "Erro de Rádio",
              "Lux Baixo",
            ]),
          ),
        ],
      ),
    );
  }
}
