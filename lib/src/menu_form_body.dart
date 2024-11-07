import 'package:flutter/material.dart';

import 'data/data.dart';
import 'item/button_form_text_header.dart';
import 'item/item.dart';
import 'utils/utils.dart';

class MenuFormBody extends StatelessWidget {
  final MenuFormData data;
  const MenuFormBody({
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
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: data.headerButtons!.map((button) {
                    Widget buttonWidget;
                    if (button is HeaderRowDataButtons) {
                      buttonWidget = ButtonFormItemHeader(data: button);
                    } else if (button is TextHeaderRowDataButtons){
                      buttonWidget = TextButtonFormItemHeader(data: button);
                    }else {
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
            ),
          if (data.buttons != null)
            Expanded(
              child: ListView.builder(
                controller: ScrollController(),
                itemCount: data.buttons!.length,
                itemBuilder: (context, index) {
                  final MenuFormItemData button = data.buttons![index];
                  if (button is MenuFormItemDataTile) {
                    return MenuFormItemTile(data: button);
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
