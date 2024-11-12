import 'package:flutter/material.dart';

import 'menu_form_item_data.dart';

class MenuFormData {
  final List<MenuFormItemData>? buttons;
  final List<MenuFormItemData>? headerButtons;
  final List<MenuFormItemData>? teste;
  final EdgeInsetsGeometry? paddingExternalHeader;
  final double paddingHorizontalHeader;

  MenuFormData({
    this.teste,
    this.paddingHorizontalHeader = 4.0, 
    this.paddingExternalHeader,
    this.headerButtons,
    this.buttons,
  })  : assert(headerButtons != null || buttons != null);
}
