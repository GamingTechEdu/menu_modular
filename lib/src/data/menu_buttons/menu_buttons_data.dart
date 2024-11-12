import 'package:flutter/material.dart';

import 'menu_buttons_item_data.dart';

class MenuButtonsData {
  final List<MenuButtosnItemData>? buttons, headerButtons;
  final EdgeInsetsGeometry? paddingExternalHeader;
  final double paddingHorizontalHeader;

  MenuButtonsData({
    this.paddingHorizontalHeader = 4.0, 
    this.paddingExternalHeader,
    this.headerButtons,
    this.buttons,
  })  : assert(headerButtons != null || buttons != null);
}