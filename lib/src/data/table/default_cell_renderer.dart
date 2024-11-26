import 'package:flutter/material.dart';

import 'table_row_data.dart';

class DefaultCellRenderer implements CellRenderer {
  const DefaultCellRenderer();

  @override
  Widget render(Widget data) {
    return data;
  }
}

