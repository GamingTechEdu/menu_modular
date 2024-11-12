import 'package:flutter/services.dart';

abstract class MenuFormItemData {
  const MenuFormItemData();
}

class CommonInputData<T> extends MenuFormItemData {
  final Color? color;
  final String? Function(T?)? errorTextBuilder;
  final List<TextInputFormatter>? inputFormatters;
  void Function(String)? onChanged;
  final String? labelText;
  final Stream<T?>? stream;

  CommonInputData({
    this.stream,
    this.labelText,
    this.errorTextBuilder,
    this.color,
    this.inputFormatters,
    required this.onChanged,
  });
}
