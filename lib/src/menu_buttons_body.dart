import 'package:flutter/material.dart';
import 'data/data.dart';
import 'item/item.dart';
import 'utils/utils.dart';

class MenuButtonsBody extends StatelessWidget {
  final MenuButtonsData data;
  const MenuButtonsBody({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Constants.padding,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (data.headerButtons != null)
            Padding(
              padding: data.paddingExternalHeader ??
                  const EdgeInsets.only(bottom: 8.0),
              child: Row(
                children: data.headerButtons!.map((button) {
                  Widget buttonWidget;
                  if (button is HeaderRowDataButtons) {
                    buttonWidget = ButtonFormItemHeader(data: button);
                  } else {
                    buttonWidget = Container();
                  }
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: data.paddingHorizontalHeader,
                    ),
                    child: buttonWidget,
                  );
                }).toList(),
              ),
            ),
          if (data.buttons != null)
            Expanded(
              child: ListView.builder(
                controller: ScrollController(),
                itemCount: data.buttons!.length,
                itemBuilder: (context, index) {
                  final MenuButtosnItemData button = data.buttons![index];
                  if (button is MenuButtonsItemDataTile) {
                    return MenuButtonsItemTile(data: button);
                  }
                  return null;
                },
              ),
            ),
          if (data.tableModular != null)
            Container(
              color: Colors.black,
              width: 100,
              height: 100,
            )
        ],
      ),
    );
  }
}
