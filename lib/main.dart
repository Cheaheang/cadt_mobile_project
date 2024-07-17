import 'package:cadt_mobile_project/UI/account_page.dart';
import 'package:cadt_mobile_project/UI/navigator_bar.dart';
import 'package:cadt_mobile_project/UI/search_page.dart';
import 'package:cadt_mobile_project/UI/shops_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(

          // primaryColor: Colors.pink,
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 227, 55, 113)),
          navigationBarTheme: NavigationBarThemeData(
              labelTextStyle:
                  MaterialStatePropertyAll(TextStyle(color: Colors.white10)))),
      debugShowCheckedModeBanner: false,
      home: NavigatorPage(),
    );
  }
}
