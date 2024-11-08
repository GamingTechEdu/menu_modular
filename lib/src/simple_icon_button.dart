import 'package:flutter/material.dart';
import 'package:menu_modular/src/data/form_icon_button_data.dart';

import 'utils/row_and_column.dart';

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
              double columnMaxWidth = constraints.maxWidth / maxColumns;

              BoxConstraints boxConstraints =
                  BoxConstraints(maxWidth: columnMaxWidth);
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
