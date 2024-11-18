import 'package:flutter/material.dart';

abstract class TableData {
  const TableData();
}

class TableHeaderData extends TableData {
  final String label;
  bool show;
  final int flex;
  final Alignment textAlign;
  final Widget Function(dynamic value, dynamic row)? sourceBuilder;

  TableHeaderData({
    this.flex = 1,
    this.textAlign = Alignment.center,
    this.show = true,
    required this.label,
    this.sourceBuilder,
  });
}

class TableRowsData extends TableData {
  final List<String> label;
  bool show;
  final int flex;
  final Alignment textAlign;
  final Widget Function(dynamic value, dynamic row)? sourceBuilder;

  TableRowsData({
    this.flex = 1,
    this.textAlign = Alignment.center,
    this.show = true,
    required this.label,
    this.sourceBuilder,
  });
}

