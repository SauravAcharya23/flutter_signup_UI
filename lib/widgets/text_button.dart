import 'package:flutter/material.dart';

Widget textButton({String? textValue}) {
  return Container(
    height: 50,
    decoration: BoxDecoration(
        color: Colors.lightGreenAccent.shade400,
        borderRadius: BorderRadius.circular(20.0)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(textValue.toString(), style: const TextStyle(fontSize: 20),),
        const Icon(
          Icons.arrow_forward_ios_outlined,
          size: 18,
        )
      ],
    )
  );
}
