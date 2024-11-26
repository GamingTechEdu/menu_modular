import 'package:flutter/material.dart';

class CheckboxComponent extends StatelessWidget {
  final Function(bool?)? onChanged;
  final bool? value;

  const CheckboxComponent({super.key, required this.onChanged, this.value});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20,
      height: 20,
      child: Transform.scale(
        scale: 0.7,
        child: Checkbox(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          checkColor: Colors.orange,
          activeColor: Colors.white,
          side: const BorderSide(
            color: Color.fromARGB(255, 126, 126, 126),
            width: 2,
          ),
          value: value,
          onChanged: onChanged,
        ),
      ),
    );
  }
}


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


class DefaultCellRenderer implements CellRenderer {
  const DefaultCellRenderer();

  @override
  Widget render(Widget data) {
    return data;
  }
}

class TableRowData {
  final List<Widget> cells;
  TableRowData(this.cells);
}

abstract class CellRenderer {
  Widget render(Widget data);
}

class CustomArrowItens extends StatelessWidget {
  final IconData? icon;
  final double? sizeIcon;
  final VoidCallback onPressed;

  const CustomArrowItens({
    super.key,
    required this.icon,
    required this.onPressed,
    required this.sizeIcon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      overlayColor: WidgetStateProperty.all(Colors.transparent),
      child: Icon(icon, size: sizeIcon),
      onTap: () => onPressed,
    );
  }
}

class CustomTable extends StatelessWidget {
  final List<TableRowData>? rows;
  final Widget? headers;
  final CellRenderer cellRenderer;
  final Alignment? headerAlign;
  final TextStyle? headerTextStyle;

  const CustomTable({
    super.key,
    this.headers,
    this.rows,
    this.cellRenderer = const DefaultCellRenderer(),
    this.headerAlign,
    this.headerTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 214, 214, 214), width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          _buildHeaderRow(),
          Expanded(
            child: ListView.builder(
              itemCount: rows!.length,
              itemBuilder: (context, index) => _buildRow(rows![index]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeaderRow() {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              alignment: headerAlign,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(3)),
                color: Color.fromARGB(255, 185, 185, 185),
              ),
              child: cellRenderer.render(headers!),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildRow(TableRowData row) {
    return Column(
      children: row.cells
          .map(
            (cell) => cellRenderer.render(cell),
          )
          .toList(),
    );
  }
}
