import 'package:flutter/material.dart';
import '../data/form_icon_button_data.dart';
import '../item/icon_button_teste.dart';

class RowAndColumn extends StatefulWidget {
  // As restrições de tamanho da grade
  final BoxConstraints constraints;
  // O número máximo de colunas na grade
  final int maxColumns;
  // As opções a serem exibidas
  final List<OptionItem> options;
  // O estado do formulário ao qual o grupo de radio buttons pertence
  final FormFieldState<List<OptionItem>> state;
  // A largura do item do radio button
  final double width;

  const RowAndColumn({
    super.key,
    required this.constraints,
    required this.maxColumns,
    required this.options,
    required this.state,
    required this.width,
  });

  @override
  State<RowAndColumn> createState() => _RowAndColumnState();
}

class _RowAndColumnState extends State<RowAndColumn> {
  // Método que constrói a grade de linhas e colunas
  Column buildWidget() {
    List<Widget> listChildren = [];
    int len = widget.options.length;
    int maxItems = len % widget.maxColumns;

    // Percorre as opções e agrupa-as em linhas
    for (int i = 0; i < len - maxItems; i += widget.maxColumns) {
      List listGroup = widget.options.sublist(i, i + widget.maxColumns);
      List<Widget> listLabelValue = [];
      for (OptionItem optionItem in listGroup) {
        // Cria um item do radio button e adiciona à linha
        Widget item = Container(
          width: widget.width,
          constraints: BoxConstraints(maxWidth: widget.constraints.maxWidth),
          child: ButtonIcon(
            optionItem: optionItem,
          ),
        );
        listLabelValue.add(item);
      }
      listChildren.add(Row(children: listLabelValue));
    }

    // Adiciona as opções restantes em uma linha final
    if (maxItems != 0) {
      List listGroup = widget.options.sublist(widget.options.length - maxItems);
      List<Widget> listLabelValue = [];
      for (var element in listGroup) {
        // Cria um item do radio button e adiciona à linha final
        Widget item = Container(
          width: widget.width,
          constraints: BoxConstraints(maxWidth: widget.constraints.maxWidth),
          child: ButtonIcon(
            optionItem: element,
          ),
        );
        listLabelValue.add(item);
      }
      listChildren.add(Row(children: listLabelValue));
    }

    

    return Column(
      children: listChildren,
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildWidget();
  }
}
