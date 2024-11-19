import 'package:flutter/material.dart';

import '../../data/table/table_header_item_data.dart';

class TableItemHeader extends StatelessWidget {
  final TableItemHeaderData? data;
  const TableItemHeader({super.key,this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 20,
              color: const Color(0xFFD9D9D9),
              alignment: data!.textAlign,
              child: Text(
                data!.label,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
