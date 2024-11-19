import 'package:flutter/material.dart';

import '../../data/table/table_header_item_data.dart';
import 'checkbox_item.dart';

class TableRows extends StatefulWidget {
  final List<TableItemRowsData>? data;

  const TableRows({
    super.key,
    required this.data,
  });

  @override
  State<TableRows> createState() => _TableRowsState();
}

class _TableRowsState extends State<TableRows> {
  List<TableItemRowsData> selecteds = [];

  onSelect(value, TableItemRowsData item) async {
    print(item);
    if (value!) {
      setState(() {
        selecteds.add(item);
      });
    } else {
      setState(() {
        selecteds.removeAt(selecteds.indexOf(item));
      });
    }
  }

  List<Widget> desktopList() {
    List<Widget> widgets = [];

    for (var index = 0; index < widget.data!.length; index++) {
      var data = widget.data![index];

      widgets.add(
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 0,
                bottom: 1,
                left: 2,
                right: 2,
              ),
              child: Container(
                padding: const EdgeInsets.all(0),
                decoration: selecteds.contains(data)
                    ? const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                        color: Colors.orange,
                      )
                    : const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                        color: Color(0xffD9D9D9),
                      ),
                child: InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                  },
                  child: Row(
                    children: [
                      if (data.checkbox)
                        CheckboxComponent(
                          value: selecteds.contains(data),
                          onChanged: (value) => onSelect(value, data),
                        ),
                      Expanded(
                        child: Text(
                          data.label.toString(),
                          style: const TextStyle(fontSize: 12),
                          textAlign: data.textAlign,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: desktopList(),
      ),
    );
  }
}
