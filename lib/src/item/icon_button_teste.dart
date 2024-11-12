import 'package:flutter/material.dart';

import '../data/form_icon_button_data.dart';

class ButtonIcon extends StatefulWidget {
  final OptionItem optionItem;

  const ButtonIcon({
    super.key,
    required this.optionItem,
  });

  @override
  State<ButtonIcon> createState() => _ButtonIconState();
}

class _ButtonIconState extends State<ButtonIcon> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (widget.optionItem.isPopUp == true)
          PopupMenuButton<String>(
            icon: Icon(widget.optionItem.icon!),
            onSelected: (String value) {
              print("Opção selecionada: $value");
            },
            itemBuilder: widget.optionItem.itemBuilder!,
          ),
        if (widget.optionItem.isPopUp == false)
          IconButton(
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            onPressed: () => widget.optionItem.onPressed(),
            icon: Icon(widget.optionItem.icon),
          )
      ],
    );
  }
}
