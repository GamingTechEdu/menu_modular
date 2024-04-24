import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menu_modular/src/data/menu_form_data.dart';

import 'data/menu_form_item_data.dart';
import 'menu_form_body.dart';
import 'utils/utils.dart';



class MenuForm extends StatefulWidget {
  final MenuFormData builder;
  const MenuForm({super.key, required this.builder,});

  @override
  State<MenuForm> createState() => _MenuFormState();
}

class _MenuFormState extends State<MenuForm> {
  @override
  Widget build(BuildContext context) {
    return MenuFormBody(
      data: widget.builder,
    );
  }

  
}
