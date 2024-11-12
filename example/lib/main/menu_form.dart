import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:menu_modular/export.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    ),
  );
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Teste());
  }
}

class Teste extends StatelessWidget {
  const Teste({super.key});

  @override
  Widget build(BuildContext context) {
    return MenuFormBody(
      data: MenuFormData(
        padding: const EdgeInsetsDirectional.all(10),
        inputs: [
          CommonInputData(
            labelText: "Teste1",
            onChanged: (value) => print(value),
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(10),
            ],
          ),
          CommonInputData(
            labelText: "Teste2",
            onChanged: (value) => print(value),
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(10),
            ],
          ),
          CommonInputData(
            labelText: "Teste3",
            onChanged: (value) => print(value),
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(10),
            ],
          ),
          CommonInputData(
            labelText: "Teste4",
            onChanged: (value) => print(value),
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(10),
            ],
          )
        ],
      ),
    );
  }
}
