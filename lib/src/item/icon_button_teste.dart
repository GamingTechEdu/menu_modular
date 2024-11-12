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
            // color: widget.optionItem,
            onSelected: (String value) {
              print("Opção selecionada: $value");
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'Opção 1',
                child: Text('Incluir Simuc'),
              ),
              const PopupMenuItem<String>(
                value: 'Opção 2',
                child: Text('Opção 2'),
              ),
              const PopupMenuItem<String>(
                value: 'Opção 3',
                child: Text('Opção 3'),
              ),
            ],
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
