import 'package:flutter/material.dart';

class OptionItem<T> {
  T value;
  final String id;
  final IconData? icon;
  final bool isPopUp;
  final VoidCallback onPressed;
  final List<PopupMenuEntry<String>> Function(BuildContext)? itemBuilder;

  OptionItem({
    this.itemBuilder,
    this.isPopUp = false, 
    required this.onPressed, 
    required this.value,
    required this.id,
    required this.icon,
  });

  @override
  String toString() {
    return 'Instance of OptionItem(value:$value, id:$id, onPressed:$onPressed)';
  }
}
