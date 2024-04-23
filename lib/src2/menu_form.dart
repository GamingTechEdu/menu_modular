import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menu_modular/src2/data/menu_form_data.dart';

import 'data/menu_form_item_data.dart';
import 'menu_form_body.dart';
import 'utils/utils.dart';

class MenuForm extends StatefulWidget {
  const MenuForm({super.key});

  @override
  State<MenuForm> createState() => _MenuFormState();
}

class _MenuFormState extends State<MenuForm> {
  @override
  Widget build(BuildContext context) {
    return MenuFormBody(
      data: MenuFormData(
        buttons: [
          MenuFormItemDataTile(
            isSelected: true,
            title: "Produção",
            icon: const Icon(Icons.add_box_outlined, size: 30,),
            iconLeading: const Icon(Icons.chevron_right_outlined)
          ),
           MenuFormItemDataTile(
            isSelected: true,
            title: "Manutenção",
            icon: const Icon(Icons.place, size: 30,),
            iconLeading: const Icon(Icons.chevron_right_outlined)
          ),
          MenuFormItemDataTile(
            isSelected: true,
            title: "Simcards",
            icon: const Icon(Icons.play_arrow, size: 30,),
            iconLeading: const Icon(Icons.chevron_right_outlined)
          ),
          MenuFormItemDataTile(
            isSelected: true,
            title: "CRM",
            icon: const Icon(Icons.cabin, size: 30,),
            iconLeading: const Icon(Icons.chevron_right_outlined)
          ),
          
        ],
      ),
    );
  }
}
