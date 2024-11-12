import 'package:flutter/material.dart';
import 'data/data.dart';
import 'item/item.dart';

class MenuFormBody extends StatelessWidget {
  final MenuFormData data;
  const MenuFormBody({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: data.padding,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (data.inputs != null)
            Expanded(
              child: ListView.builder(
                controller: ScrollController(),
                itemCount: data.inputs!.length,
                itemBuilder: (context, index) {
                  final MenuFormItemData button = data.inputs![index];
                  if (button is CommonInputData) {
                    return CommonInput(data: button);
                  }
                  return null;
                },
              ),
            )
        ],
      ),
    );
  }
}
