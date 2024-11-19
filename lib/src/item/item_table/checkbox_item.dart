import 'package:flutter/material.dart';

class CheckboxComponent extends StatelessWidget {
  final Function(bool?)? onChanged;
  final bool? value;
  
  const CheckboxComponent({Key? key, required this.onChanged, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20, 
      height: 20, 
      child: Transform.scale(
        scale: 0.7, 
        child: Checkbox(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          checkColor: Colors.orange,
          activeColor: Colors.white,
          side: const BorderSide(
            color: Color.fromARGB(255, 126, 126, 126),
            width: 2,
          ),
          value: value,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
