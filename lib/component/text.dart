import 'package:cadt_mobile_project/provider/globalVariable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

Widget textBuble(String text) {
  ChangeTheme turnOnDarkMode = Get.put(ChangeTheme());
  return Container(
    margin: EdgeInsets.all(8),
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(width: 1, color: Colors.grey)),
    child: textComponent(
        text: text,
        bold: FontWeight.bold,
        color: turnOnDarkMode.getDarkMode ? Colors.black : Colors.white),
  );
}
