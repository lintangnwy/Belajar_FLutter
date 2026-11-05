import 'package:flutter/material.dart';

 class ListSeparated extends StatelessWidget {
 ListSeparated({super.key});
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
    return ListView.separated(
      itemCount: partai.length,
      itemBuilder: (context, index) {
        return Container(
          height: 400,
          color: partaiColor[index],
          child: Center(child: Text(partai[index].toString())),
        );
      },
      separatorBuilder: (context, index) {
        return Divider(
          color: Colors.black,
          height: 10,
          radius: BorderRadius.circular(10),
          indent: 20,
          endIndent: 20,
          thickness: 2,
        );
      },
    );
  }
}