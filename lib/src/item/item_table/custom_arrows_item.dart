import 'package:flutter/material.dart';

class CustomArrowItens extends StatelessWidget {
  final IconData? icon;
  final double? sizeIcon;
  final VoidCallback onPressed;

  const CustomArrowItens({
    super.key,
    required this.icon,
    required this.onPressed,
    required this.sizeIcon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      overlayColor: WidgetStateProperty.all(Colors.transparent),
      child: Icon(icon, size: sizeIcon),
      onTap: () => onPressed,
    );
  }
}
