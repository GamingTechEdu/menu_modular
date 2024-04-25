import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../data/data.dart';
import '../utils/utils.dart';

class MenuFormItemTile extends StatefulWidget {
  final MenuFormItemDataTile data;
  // final bool isOpen;
  const MenuFormItemTile({
    super.key,
    required this.data,
    // required this.isOpen,
  });

  @override
  State<MenuFormItemTile> createState() => _MenuFormItemTileState();
}

class _MenuFormItemTileState extends State<MenuFormItemTile> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.data.itemHeight,
      margin: widget.data.margin,
      decoration: ShapeDecoration(
          shape: shape(context),
          color: backgroundColor(context),
          shadows: [
            BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 1,
                spreadRadius: 1,
                offset: const Offset(1, 2))
          ]),
      child: Material(
        color: const Color.fromARGB(0, 226, 51, 51),
        clipBehavior: Clip.hardEdge,
        shape: shape(context),
        child: InkWell(
          onTap: widget.data.onTap,
          hoverColor: widget.data.hoverColor ?? Colors.grey,
          child: _createView(context: context),
        ),
      ),
    );
  }

  Widget _createView({required BuildContext context}) {
    return _content(context: context);
  }

  Widget _content({required BuildContext context}) {
    final hasIcon = widget.data.icon != null;
    final hasTitle = widget.data.title != null;
    final hasIconLeading = widget.data.iconLeading != null;
    if (hasIcon && hasTitle || hasIconLeading) {
      return Row(
        children: [
          _icon(),
          Expanded(
            child: _title(context: context),
          ),
          _iconLeading()
        ],
      );
    } else if (hasIcon) {
      return Align(
        alignment: AlignmentDirectional.centerStart,
        child: _icon(),
      );
    } else {
      return Container(
        alignment: AlignmentDirectional.centerStart,
        padding: Constants.textStartPadding,
        child: _title(context: context),
      );
    }
  }

  Widget _icon() {
    return widget.data.icon != null
        ? SizedBox(
            width: 50 - widget.data.margin.horizontal,
            height: double.maxFinite,
            child: widget.data.icon!,
          )
        : const SizedBox.shrink();
  }

  Widget _iconLeading() {
    double buttonSize = MediaQuery.sizeOf(context).width;
    return widget.data.iconLeading != null
        ? Visibility(
            visible: buttonSize < 120 ? false : true,
            child: SizedBox(
                height: double.maxFinite, child: widget.data.iconLeading),
          )
        : Visibility(
            visible: buttonSize < 120 ? false : true,
            child: const SizedBox(
              height: double.maxFinite,
              child: Icon(Icons.chevron_right_outlined),
            ),
          );
  }

  Widget _title({required BuildContext context}) {
    final TextStyle? titleStyle =
        widget.data.titleStyle ?? Theme.of(context).textTheme.bodyLarge;
    return AutoSizeText(
      widget.data.title!,
      style: titleStyle?.copyWith(color: getSelectedColor()),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }

  Color getSelectedColor() {
    return widget.data.titleStyle?.color ??
        Theme.of(context).colorScheme.onSurfaceVariant;
  }

  OutlinedBorder shape(BuildContext context) {
    return widget.data.borderRadius != null
        ? RoundedRectangleBorder(borderRadius: widget.data.borderRadius!)
        : RoundedRectangleBorder(borderRadius: BorderRadius.circular(4));
  }

  Color? backgroundColor(BuildContext context) {
    return widget.data.backgroundColor != null
        ? isHover
            ? widget.data.backgroundColor
            : widget.data.backgroundColor
        : isHover
            ? const Color.fromARGB(255, 180, 180, 180)
            : const Color.fromARGB(255, 207, 207, 207);
  }
}
