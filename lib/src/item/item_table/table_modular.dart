import 'package:flutter/material.dart';
import '../../../export.dart';
import '../../data/table/table_header_item_data.dart';

class TableDefects extends StatelessWidget {
  final double? width;
  final TableItemHeaderData? header;
  final List<TableItemRowsData>? data;

  const TableDefects({
    super.key,
    this.header,
    this.data, 
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        width: width,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFBAB8B8), width: 4),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            if (header != null)
              TableItemHeader(data: header),
            if (data != null)
              TableRows(data: data)
          ],
        ),
      ),
    );
  }
}
