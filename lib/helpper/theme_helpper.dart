import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeHelpper {
 static ThemeData lightTheme = ThemeData(
    fontFamily: 'kalameh',
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(
      primary: Colors.blue,
      secondary: Colors.yellow,
    ),
  );

 static ThemeData darkTheme = ThemeData(
    fontFamily: 'kalameh',
    scaffoldBackgroundColor: Colors.black,
    colorScheme: ColorScheme.dark(
      primary: Colors.blue,
      onPrimary: Colors.white,
      secondary: Colors.yellow,
    ),
  );

  static void changeTheme(){
    if(Get.isDarkMode){
    Get.changeTheme(lightTheme);
    }else{
      Get.changeTheme(darkTheme);
    }
  }

}
