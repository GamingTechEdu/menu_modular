import 'package:flutter/material.dart';
import '../../export.dart';

class ButtonFormItemHeader extends StatefulWidget {
  final HeaderRowDataButtons data;
  const ButtonFormItemHeader({super.key, required this.data});

  @override
  State<ButtonFormItemHeader> createState() => _ButtonFormItemHeaderState();
}

class _ButtonFormItemHeaderState extends State<ButtonFormItemHeader> {
  @override
  Widget build(BuildContext context) {
    // var teste = MediaQuery.of(context).size.width;
    return IconButton(
      icon: widget.data.icon!,
      onPressed: widget.data.onPressed,
      color: widget.data.backgroundColor,
      // child: Text(teste.toString()),
    );
  }
}

