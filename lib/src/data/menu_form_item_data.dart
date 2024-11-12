import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/utils.dart';

abstract class MenuFormItemData {
  const MenuFormItemData();
}

class MenuFormItemDataTile extends MenuFormItemData {
  final String? title;
  final Widget? icon;
  final Widget? iconLeading;
  final double? elevation;
  final double itemHeight;
  final Color? backgroundColor;
  final TextStyle? titleStyle;
  final Color? foregroundColor;
  final List<BoxShadow>? boxShadow;
  final VoidCallback onTap;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsDirectional margin;
  final Color? hoverColor, highlightSelectedColor;

  MenuFormItemDataTile({
    this.elevation,
    required this.onTap,
    this.iconLeading,
    this.title,
    this.icon,
    this.padding,
    this.titleStyle = Constants.defaultTextStyle,
    this.foregroundColor,
    this.hoverColor,
    this.boxShadow,
    this.borderRadius,
    this.backgroundColor,
    this.highlightSelectedColor,
    this.margin = Constants.margin,
    this.itemHeight = Constants.itemHeight,
  })  : assert(itemHeight >= 0.0),
        assert(icon != null || title != null),
        super();
}

class HeaderRowDataButtons extends MenuFormItemData {
  final Widget? icon;
  final Color? backgroundColor;
  final VoidCallback onPressed;
  final List<PopupMenuEntry<String>> Function(BuildContext)? itemBuilder;

  HeaderRowDataButtons({
    this.itemBuilder,
    required this.onPressed,
    this.icon,
    this.backgroundColor,
  }) : super();
}

class InputsMenuForm<T> extends MenuFormItemData {
  final Color? color;
  final String? errorText;
  final List<TextInputFormatter>? inputFormatters;
  void Function(String)? onChanged;
  final String? labelText;
  final Stream<T?>? stream;

  InputsMenuForm({
    this.stream,
    this.labelText,
    this.errorText,
    this.color,
    this.inputFormatters,
    required this.onChanged,
  });
}
