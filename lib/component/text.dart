import 'package:flutter/material.dart';

Widget textComponent(
    {required String text, FontWeight? bold, double? size, Color? color}) {
  return FittedBox(
    fit: BoxFit.fitWidth,
    child: Text(
      text,
      style: TextStyle(fontWeight: bold, fontSize: size, color: color),
    ),
  );
}
