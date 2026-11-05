import 'package:flutter/material.dart';

 class ListBuilderWidget extends StatelessWidget {
 ListBuilderWidget({super.key});
  var partai = [
    "Golongan Karya",
    "PDI",
    "Demokrat",
    "PKB",
  ];
  var partaiColor = [
    Colors.amber,
    Colors.red,
    Colors.blue,
    Colors.green,
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: partai.length,
      itemBuilder: (context, index) {
        return Container(
          height: 400,
          color: partaiColor[index],
          child: Center(child: Text(partai[index].toString())),
        );
      },
    );
  }
}