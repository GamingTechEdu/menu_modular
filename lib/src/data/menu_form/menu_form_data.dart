import 'package:flutter/material.dart';

import '../data.dart';

class MenuFormData {
  final List<MenuFormItemData>? inputs;
  final EdgeInsetsDirectional? padding;

  MenuFormData({
    this.padding = const EdgeInsetsDirectional.all(0),
    this.inputs
  });
}
