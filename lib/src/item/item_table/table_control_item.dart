import 'package:flutter/material.dart';

class ControlItem extends StatelessWidget {
  const ControlItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          overlayColor: WidgetStateProperty.all(Colors.transparent),
          child: const Icon(
            Icons.keyboard_double_arrow_right_rounded,
            size: 35,
          ),
          onTap: () => {print("forward")},
        ),
        const SizedBox(
          height: 20,
        ),
        InkWell(
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          overlayColor: WidgetStateProperty.all(Colors.transparent),
          child: const Icon(
            Icons.keyboard_double_arrow_left_rounded,
            size: 35,
          ),
          onTap: () => {print("back")},
        ),
      ],
    );
  }
}
