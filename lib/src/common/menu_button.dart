import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum MenuButtonType {
  simcardMenu,
  simcardInclude,
  simcardEdit,
  // simucEditFind,
  // simconEdit,
  // simucRemove,
  // simucRemoveBatch,
  // simconRemove,
  // simucReplace,
  // simucSectorize,
}

class MenuButton extends StatefulWidget {
  final String label;
  final String icon;
  final EdgeInsetsGeometry padding;
  final VoidCallback onPressed;
  final bool? isOpen;

  const MenuButton({
    super.key,
    required this.label,
    required this.icon,
    this.padding = const EdgeInsets.only(bottom: 10),
    required this.onPressed,
    this.isOpen = true,
  });

  @override
  State<MenuButton> createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  bool isHover = false;

  Color getBackgroundColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.red;
  }

  Color getForegroundColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.white;
    }
    return Colors.yellow;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding,
      child: TextButton(
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        onPressed: widget.onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              isHover ? Color(0xFFD9D9D9) : Color(0xFFD9D9D9)),
          foregroundColor: MaterialStateProperty.all(
              isHover ? const Color.fromARGB(255, 129, 129, 129) : const Color.fromARGB(255, 0, 0, 0)),
          padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(horizontal: 10, vertical: 15)),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              width: 30,
              height: 30,
              "packages/menu_modular/lib/src/assets/${widget.icon}",
              colorFilter: ColorFilter.mode(
                  isHover ? Colors.black :  Colors.black, BlendMode.srcIn),
              semanticsLabel: "A red up arrow",
            ),
            const SizedBox(width: 10),
            Text(widget.label),
            const Spacer(),
            const Icon(Icons.chevron_right_outlined),
          ],
        ),
      ),
    );
  }
}

// Widget _icon(String? icon, bool isHover) {
//   final margin = EdgeInsetsDirectional.only(end: 10, top: 10, bottom: 10);
//   return icon != null
//       ? SizedBox(
//           width: 40 - margin.horizontal,
//           height: double.maxFinite,
//           child: SvgPicture.asset(
//             width: 30,
//             height: 30,
//             "packages/flutter_side_menu/src/kdl_menu_simcards/assets/${icon}",
//             colorFilter: ColorFilter.mode(
//                 isHover ? Colors.black : Colors.blueAccent, BlendMode.srcIn),
//             semanticsLabel: "A red up arrow",
//           ),
//         )
//       : const SizedBox.shrink();
// }

// Widget _title() {
//   return AutoSizeText("data", overflow: TextOverflow.ellipsis,);
// }


// TextButton(
//         onHover: (value) {
//           setState(() {
//             isHover = value;
//           });
//         },
//         onPressed: widget.onPressed,
//         style: ButtonStyle(
//           backgroundColor: MaterialStateProperty.all(
//               isHover ? Colors.orange[400] : Colors.orangeAccent[100]),
//           foregroundColor: MaterialStateProperty.all(
//               isHover ? Colors.black : Colors.blueAccent),
//           padding: MaterialStateProperty.all(
//               const EdgeInsets.symmetric(horizontal: 10, vertical: 15)),
//         ),
//         child: Row(
//           children: [
//             SvgPicture.asset(
//               width: 30,
//               height: 30,
//               "packages/flutter_side_menu/src/kdl_menu_simcards/assets/${widget.icon}",
//               colorFilter: ColorFilter.mode(
//                   isHover ? Colors.black : Colors.blueAccent, BlendMode.srcIn),
//               semanticsLabel: "A red up arrow",
//             ),
//             const SizedBox(width: 10),
//             Text(widget.label),
//             const Spacer(),
//             const Icon(Icons.chevron_right_outlined),
//           ],
//         ),
//       ),