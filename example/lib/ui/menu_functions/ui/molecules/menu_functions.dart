import 'package:flutter/material.dart';
import 'package:menu_modular/export.dart';

import '../../../../utils/enums/enums.dart';

class MenuFunctions extends StatelessWidget {
  final ValueChanged<EnumMenuFunction> onPressed;
  const MenuFunctions({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MenuFormBody(
      data: MenuFormData(
        buttons: [
          MenuFormItemDataTile(
            itemHeight: 40,
            title: "Gerar AR",
            icon: const Icon(Icons.add_box_outlined, size: 25),
            onTap: () {
              onPressed(EnumMenuFunction.simucInclude);
            },
          ),
          MenuFormItemDataTile(
            itemHeight: 40,
            title: "Editar SIMUC",
            icon: const Icon(Icons.edit, size: 25),
            onTap: () {
              onPressed(EnumMenuFunction.simucEdit);
            },
          ),
          MenuFormItemDataTile(
            itemHeight: 40,
            title: "Exportar Relatório",
            icon: const Icon(Icons.chair_alt, size: 25),
            onTap: () {},
          ),
          MenuFormItemDataTile(
            itemHeight: 40,
            title: "Excluir SIMUC",
            icon: const Icon(Icons.delete, size: 25),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}