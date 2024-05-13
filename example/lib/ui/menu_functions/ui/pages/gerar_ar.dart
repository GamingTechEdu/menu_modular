import 'package:flutter/material.dart';

import '../../../../utils/spacing.dart';
import '../atoms/atoms.dart';

class GerarAR extends StatefulWidget {
  final VoidCallback onBack;
  const GerarAR({super.key, required this.onBack});

  @override
  State<GerarAR> createState() => _GerarARState();
}

class _GerarARState extends State<GerarAR> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          TabBarBackAtom(title: "AR / Gerar", onBack: widget.onBack),
          Positioned(
            top: 45,
            bottom: 0,
            left: 0,
            right: 0,
            child: FutureBuilder(
              future: loadListSimucDropDown(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState == ConnectionState.done &&
                    snapshot.hasData) {
                  return const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Form(
                      // key: ManagerKey.formKey,
                      child: Column(
                        children: [
                          GenerateArCostumer(),
                          Spacing.verticalSpaceX,
                          GenerateArDocEntrance(),
                          Spacing.verticalSpaceX,
                          GenerateArTotalItens(),
                          Spacing.verticalSpaceX,
                          GenerateArUser(),
                          Spacing.verticalSpaceX,
                          GenerateArButton()
                        ],
                      ),
                    ),
                  );
                }
                return Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    backgroundColor: Colors.black12,
                    valueColor: AlwaysStoppedAnimation<Color>(
                        Theme.of(context).primaryColor),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Future<List<LabelValue>> loadListSimucDropDown() async {
    await Future.delayed(const Duration(seconds: 1));
    return [
      LabelValue<String>(label: "1234567890", value: "1234567890"),
      LabelValue<String>(label: "1234564569", value: "1234564569"),
      LabelValue<String>(label: "1234567896", value: "1234567896"),
      LabelValue<String>(label: "1234561236", value: "1234561236"),
      LabelValue<String>(label: "1234561237", value: "1234561237"),
      LabelValue<String>(label: "1234561238", value: "1234561238"),
      LabelValue<String>(label: "1234561285", value: "1234561285"),
    ];
  }
}

class LabelValue<T> {
  final String label;
  final T value;

  LabelValue({required this.label, required this.value});

  @override
  String toString() {
    return 'Instance of LabelValue(name:$label, value:$value)';
  }
}
