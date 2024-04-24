import 'package:flutter/material.dart';

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
  final VoidCallback onPressed;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsDirectional margin;
  final Color? hoverColor, highlightSelectedColor;

  MenuFormItemDataTile({
    this.elevation, 
    required this.onPressed,
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
