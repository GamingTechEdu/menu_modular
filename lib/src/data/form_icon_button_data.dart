import 'package:flutter/material.dart';

class OptionItem<T> {
  T value;
  final String id;
  final IconData? icon;
  final VoidCallback onPressed;

  OptionItem({
    required this.onPressed, 
    required this.value,
    required this.id,
    required this.icon,
  });

  @override
  String toString() {
    return 'Instance of OptionItem(value:$value, id:$id)';
  }
}
