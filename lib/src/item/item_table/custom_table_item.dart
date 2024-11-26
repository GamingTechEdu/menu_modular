import 'package:flutter/material.dart';

import '../../../export.dart';


class CustomTable extends StatelessWidget {
  final List<TableRowData>? rows;
  final Widget? headers;
  final CellRenderer cellRenderer;
  final Alignment? headerAlign;
  final TextStyle? headerTextStyle;

  const CustomTable({
    super.key,
    this.headers,
    this.rows,
    this.cellRenderer = const DefaultCellRenderer(),
    this.headerAlign,
    this.headerTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 214, 214, 214), width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          _buildHeaderRow(),
          Expanded(
            child: ListView.builder(
              itemCount: rows!.length,
              itemBuilder: (context, index) => _buildRow(rows![index]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeaderRow() {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              alignment: headerAlign,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(3)),
                color: Color.fromARGB(255, 185, 185, 185),
              ),
              child: cellRenderer.render(headers!),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildRow(TableRowData row) {
    return Column(
      children: row.cells
          .map(
            (cell) => cellRenderer.render(cell),
          )
          .toList(),
    );
  }
}