import 'package:get/get.dart';

class ChangeTheme extends GetxController {
  var _darkMode = true.obs;

  void setDarkMode({bool? turnOnMode}) {
    _darkMode.value = turnOnMode!;
  }

  bool get getDarkMode {
    return _darkMode.value;
  }
}
