import 'package:flutter/material.dart';


import 'data/data.dart';
import 'item/item.dart';
import 'utils/utils.dart';

class MenuFormBody extends StatelessWidget {
  final MenuFormData data;
  const MenuFormBody({super.key, required this.data, });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Constants.padding,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (data.buttons != null)
            Expanded(
              child: ListView.builder(
                controller: ScrollController(),
                itemCount: data.buttons!.length,
                itemBuilder: (context, index) {
                  final MenuFormItemData button = data.buttons![index];
                  if (button is MenuFormItemDataTile) {
                    return MenuFormItemTile(
                      data: button
                    );
                  }
                },
              ),
            )
        ],
      ),
    );
  }
}
