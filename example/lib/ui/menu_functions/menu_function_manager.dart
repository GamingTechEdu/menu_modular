import 'package:flutter/material.dart';
import '../../foundations/theme.dart';
import 'ui/molecules/menu_functions.dart';
import '../../utils/enums/enums.dart';
import 'ui/pages/pages.dart';

class MenuFunctionsManager extends StatefulWidget {

  const MenuFunctionsManager({super.key});

  @override
  State<MenuFunctionsManager> createState() => _MenuFunctionsManagerState();
}

class _MenuFunctionsManagerState extends State<MenuFunctionsManager> {
  EnumMenuFunction activeView = EnumMenuFunction.simucMenu;

  @override
  Widget build(BuildContext context) {
    return _switchViews();
  }

  Widget _switchViews() {
    switch (activeView) {
      case EnumMenuFunction.simucMenu:
        return MenuFunctions(
          onPressed: (value) {
            setState(() {
              activeView = value;
            });
          },
        );

      case EnumMenuFunction.simucInclude:
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeForm.themeB,
          home: Scaffold(
            body: GerarAR(
              onBack: () {
                setState(() {
                  activeView = EnumMenuFunction.simucMenu;
                });
              },
            ),
          ),
        );

      case EnumMenuFunction.simucEdit:
        return SimucEdit(
          onBack: () {
            setState(() {
              activeView = EnumMenuFunction.simucMenu;
            });
          },
        );
    }
  }
}

