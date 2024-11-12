import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../data/data.dart';
import '../../utils/utils.dart';

class MenuButtonsItemTile extends StatefulWidget {
  final MenuButtonsItemDataTile data;
  const MenuButtonsItemTile({
    super.key,
    required this.data,
  });

  @override
  State<MenuButtonsItemTile> createState() => _MenuButtonsItemTileState();
}

class _MenuButtonsItemTileState extends State<MenuButtonsItemTile> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          height: widget.data.itemHeight,
          margin: widget.data.margin,
          decoration: ShapeDecoration(
            shape: shape(context),
            color: backgroundColor(context),
            shadows: widget.data.boxShadow ??
                [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 1,
                    blurStyle: BlurStyle.solid,
                    offset: const Offset(0, 2),
                  )
                ],
          ),
          child: Material(
            color: const Color.fromARGB(0, 226, 51, 51),
            clipBehavior: Clip.hardEdge,
            shape: shape(context),
            child: InkWell(
              onTap: widget.data.onTap,
              hoverColor: widget.data.hoverColor ?? Colors.grey,
              child: _createView(
                context: context,
                constraints: constraints,
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _createView({required BuildContext context, BoxConstraints? constraints}) {
    return _content(context: context, constraints: constraints);
  }

  Widget _content({required BuildContext context, BoxConstraints? constraints}) {
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
          if (constraints!.maxWidth >= 120) _iconLeading()
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
    return widget.data.iconLeading != null
        ? SizedBox(height: double.maxFinite, child: widget.data.iconLeading)
        : const SizedBox(
            height: double.maxFinite,
            child: Icon(Icons.chevron_right_outlined),
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
