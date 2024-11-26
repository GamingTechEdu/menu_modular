import 'package:flutter/material.dart';

class TableRowData {
  final List<Widget> cells;
  TableRowData(this.cells);
}

abstract class CellRenderer {
  Widget render(Widget data);
}