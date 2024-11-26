import 'package:flutter/material.dart';

import 'checkbox_component.dart';

class CustomTableCell extends StatefulWidget {
  final String text;
  final TextStyle? textStyle;
  final TextAlign? align;
  final bool? checkbox;

  const CustomTableCell({
    super.key,
    required this.text,
    this.textStyle,
    this.align = TextAlign.center,
    this.checkbox = true,
  });

  @override
  State<CustomTableCell> createState() => _CustomTableCellState();
}

class _CustomTableCellState extends State<CustomTableCell> {
  List<String> selecteds = [];

  onSelect(value, item) async {
    if (value!) {
      setState(() {
        selecteds.add(item);
        print(selecteds);
      });
    } else {
      setState(() {
        selecteds.removeAt(selecteds.indexOf(item));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 0,
        bottom: 1,
        left: 2,
        right: 2,
      ),
      child: Container(
        padding: const EdgeInsets.all(0),
        decoration: selecteds.contains(widget.text)
            ? const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(3)),
                color: Color.fromARGB(255, 255, 118, 55),
              )
            : const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(3)),
                color: Color.fromARGB(255, 223, 223, 223),
              ),
        child: Row(
          children: [
            if (widget.checkbox != false)
              CheckboxComponent(
                onChanged: (value) => onSelect(value, widget.text),
                value: selecteds.contains(widget.text),
              ),
            Expanded(
              child: Text(
                textAlign: widget.align,
                widget.text,
                style: widget.textStyle ?? const TextStyle(fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
