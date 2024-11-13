import 'package:flutter/material.dart';
import '../../data/data.dart';

class CommonInput<T> extends StatefulWidget {
  final CommonInputData<T> data;

  const CommonInput({super.key, required this.data});

  @override
  State<CommonInput<T>> createState() => _CommonInputState<T>();
}

class _CommonInputState<T> extends State<CommonInput<T>> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<T?>(
      stream: widget.data.stream,
      builder: (context, AsyncSnapshot<T?> snapshot) {
        return TextFormField(
          decoration: InputDecoration(
            labelText: widget.data.labelText,
            errorText: widget.data.errorTextBuilder != null
                ? widget.data.errorTextBuilder!(snapshot.data)
                : null,
          ),
          inputFormatters: widget.data.inputFormatters,
          onChanged: widget.data.onChanged,
        );
      },
    );
  }
}
