import 'package:flutter/material.dart';

import '../../component/component.dart';
import '../../data/table/table_header_item_data.dart';

class TableRows extends StatefulWidget {
  final TableRowsData data;
  const TableRows({
    super.key,
    required this.data,
  });

  @override
  State<TableRows> createState() => _TableRowsState();
}

class _TableRowsState extends State<TableRows> {
  var teste = false;

  bool change() {
    if (teste == false) {
      setState(() {
        teste = true;
      });
      return teste;
    } else {
      setState(() {
        teste = false;
      });
      return teste;
    }
  }

  List<Widget> desktopList() {
    List<Widget> widgets = [];

    for (var index = 0; index < widget.data.label.length; index++) {
      var data = widget.data.label[index];

      widgets.add(
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 0,
                bottom: 1,
                left: 8,
                right: 8,
              ),
              child: Container(
                padding: const EdgeInsets.all(0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(3)),
                  color: Color(0xffD9D9D9),
                ),
                child: InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    change();
                    print(data);
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          CheckboxComponent(
                            value: teste,
                            onChanged: (value) => change(),
                          )
                        ],
                      ),
                      Expanded(
                        child: Text(
                          data,
                          style: const TextStyle(fontSize: 12),
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
