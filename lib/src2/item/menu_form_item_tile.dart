import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../data/data.dart';
import '../utils/utils.dart';

class MenuFormItemTile extends StatefulWidget {
  final MenuFormItemDataTile data;
  // final bool isOpen;
  // final double minWidth;
  const MenuFormItemTile({
    super.key,
    required this.data,
    // required this.isOpen,
    // required this.minWidth,
  });

  @override
  State<MenuFormItemTile> createState() => _MenuFormItemTileState();
}

class _MenuFormItemTileState extends State<MenuFormItemTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.data.itemHeight,
      margin: widget.data.margin,
      child: TextButton(
          style: ButtonStyle(
            shape: shape(context),
            backgroundColor: backgroundColor(context),
            foregroundColor: foregroundColor(context),
          ),
          onPressed: () {},
          child: _createView(context: context)),
    );
  }

  Widget _createView({required BuildContext context}) {
    return _content(context: context);
  }

  Widget _content({required BuildContext context}) {
    final hasIcon = widget.data.icon != null;
    final hasTitle = widget.data.title != null;
    final hasIconLeading = widget.data.iconLeading != null;
    // if (hasIcon && hasTitle) {
    //   return Row(
    //     children: [
    //       _icon(),
    //       Expanded(
    //         child: _title(context: context),
    //       ),
    //     ],
    //   );
    // } else 
    if (hasIcon && hasTitle && hasIconLeading) {
      return Row(
        children: [
          _icon(),
          const SizedBox(width: 10),
          Expanded(
            child: _title(context: context),
          ),
          const Spacer(),
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
        ? SizedBox(height: double.maxFinite, child: widget.data.icon)
        : const SizedBox.shrink();
  }

  Widget _iconLeading() {
    return widget.data.iconLeading != null
        ? SizedBox(height: double.maxFinite, child: widget.data.iconLeading)
        : const SizedBox.shrink();
  }

  Widget _title({required BuildContext context}) {
    final TextStyle? titleStyle =
        widget.data.titleStyle ?? Theme.of(context).textTheme.bodyLarge;
    final TextStyle? selectedTitleStyle =
        widget.data.selectedTitleStyle ?? Theme.of(context).textTheme.bodyLarge;
    return AutoSizeText(
      widget.data.title!,
      style: widget.data.isSelected
          ? selectedTitleStyle?.copyWith(color: getSelectedColor())
          : titleStyle?.copyWith(color: getSelectedColor()),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }

  Color getSelectedColor() {
    return widget.data.isSelected
        ? widget.data.selectedTitleStyle?.color ??
            Theme.of(context).colorScheme.onSecondaryContainer
        : widget.data.titleStyle?.color ??
            Theme.of(context).colorScheme.onSurfaceVariant;
  }

  MaterialStateProperty<OutlinedBorder?>? shape(BuildContext context) {
    return widget.data.borderRadius != null
        ? MaterialStateProperty.all<OutlinedBorder?>(
            RoundedRectangleBorder(borderRadius: widget.data.borderRadius!))
        : MaterialStateProperty.all<OutlinedBorder?>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)));
  }

  MaterialStateProperty<Color?>? backgroundColor(BuildContext context) {
    return widget.data.backgroundColor != null
        ? MaterialStateProperty.all(widget.data.backgroundColor)
        : MaterialStateProperty.all(const Color.fromARGB(255, 207, 207, 207));
  }

  MaterialStateProperty<Color?>? foregroundColor(BuildContext context) {
    return widget.data.foregroundColor != null
        ? MaterialStateProperty.all(widget.data.foregroundColor)
        : MaterialStateProperty.all(Colors.black);
  }

  List<BoxShadow> boxShadow(BuildContext context) {
    return [
      BoxShadow(
        color: Colors.black.withOpacity(0.3),
        spreadRadius: 1,
        blurRadius: 2,
        offset: const Offset(1, 3),
      ),
    ];
  }
}
