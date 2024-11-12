import 'package:flutter/material.dart';
import 'package:menu_modular/export.dart';

class MenuInput<T> extends StatefulWidget {
  final InputsMenuForm<T> data;

  const MenuInput({super.key, required this.data});

  @override
  State<MenuInput<T>> createState() => _MenuInputState<T>();
}

class _MenuInputState<T> extends State<MenuInput<T>> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<T?>(
      stream: widget.data.stream,
      builder: (context, snapshot) {
        return TextFormField(
          decoration: InputDecoration(
            labelText: widget.data.labelText,
            errorText: widget.data.errorTextBuilder!(snapshot.data),
          ),
          inputFormatters: widget.data.inputFormatters,
          onChanged: widget.data.onChanged,
        );
      },
    );
  }
}
