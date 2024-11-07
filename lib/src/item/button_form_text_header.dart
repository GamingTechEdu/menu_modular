import 'package:flutter/material.dart';

import '../../export.dart';

class TextButtonFormItemHeader extends StatefulWidget {
  final TextHeaderRowDataButtons data;
  const TextButtonFormItemHeader({super.key, required this.data});

  @override
  State<TextButtonFormItemHeader> createState() => _TextButtonFormItemHeaderState();
}

class _TextButtonFormItemHeaderState extends State<TextButtonFormItemHeader> {
  @override
  Widget build(BuildContext context) {
    // var teste = MediaQuery.of(context).size.width;
    return TextButton(
      onPressed: (){},
      child: Text(widget.data.title!),
      // child: Text(teste.toString()),
    );
  }
}

