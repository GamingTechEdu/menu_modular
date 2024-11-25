import 'package:flutter/material.dart';

abstract class TableHeaderData {
  const TableHeaderData();
}

class TableItemHeaderData extends TableHeaderData {
  final String label;
  bool show;
  final int flex;
  final Alignment textAlign;
  final Widget Function(dynamic value, dynamic row)? sourceBuilder;

  TableItemHeaderData({
    this.flex = 1,
    this.textAlign = Alignment.center,
    this.show = true,
    required this.label,
    this.sourceBuilder,
  });
}

class TableItemRowsData extends TableHeaderData {
  final String label;
  final String? valueCheckBox;
  final int flex;
  final TextAlign? textAlign;
  final bool checkbox;

  TableItemRowsData({
    this.checkbox = true,
    this.valueCheckBox,
    this.flex = 1,
    this.textAlign = TextAlign.center,
    required this.label,
  });
}

class ControlItemData extends TableHeaderData{}