import 'package:flutter/material.dart';
import 'package:menu_modular/src/data/form_icon_button_data.dart';

import 'utils/row_and_column.dart';

//constraints.maxWidth ==> Largura atual
//numero de colunas atuais ==> maxColumns
//maxWidth ==> 50


class SimpleIconButton extends FormField<List<OptionItem>> {
  final List<OptionItem> options;
  final double minWidth;
  final double maxWidth;

  SimpleIconButton({
    super.key,
    required this.options,
    this.minWidth = 230,
    this.maxWidth = 230,
  }) : super(
          builder: (FormFieldState<List<OptionItem>> state) {
            // Método que constrói a grade de radio buttons
            dynamic rowAndColumn(BoxConstraints constraints) {
              int maxColumns = (constraints.maxWidth / maxWidth).round();
              //Divido a largura atual da minha tela por maxWidth que foi definido por mim (50 neste caso)
              //e depois arredondo com round()
              double columnMaxWidth = constraints.maxWidth / maxColumns;
              //divido a largura atual da minha tela pelo némero de colunas maxColumns
              
              // print("Número Coluns ==> $maxColumns");
              // print("columnMaxWidth ==> $columnMaxWidth");
              
              BoxConstraints boxConstraints = BoxConstraints(maxWidth: columnMaxWidth);
          
              if (boxConstraints.maxWidth > maxWidth) {
                boxConstraints = BoxConstraints(maxWidth: maxWidth);
              }

              return RowAndColumn(
                options: options,
                maxColumns: maxColumns,
                constraints: boxConstraints,
                width: (constraints.maxWidth / maxColumns),
                state: state,
              );
            }

            // Usa um LayoutBuilder para passar as restrições de tamanho para o método rowAndColumn
            return LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return rowAndColumn(constraints);
              },
            );
          },
        );
}
