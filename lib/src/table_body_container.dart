import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'data/table/table_body_data.dart';

class TableBodyContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final String title;
  final List<Widget> widgets;
  // final TableContainerBodyData data;
  const TableBodyContainer({
    super.key,
    required this.title,
    required this.widgets,
    // required this.data,
    this.width = 500,
    this.height = 200,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [Text(title)],
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: height,
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFFBAB8B8), width: 4),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: widgets,
          ),
        ),
      ],
    );
  }
}
