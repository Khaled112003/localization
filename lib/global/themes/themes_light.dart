
import 'package:flutter/material.dart';
import 'package:themes/global/colors/app_colors_light.dart';

ThemeData lightTheme = ThemeData(
  primaryColor: AppColorsLight.blue,
  
  brightness: Brightness.light,
  scaffoldBackgroundColor: AppColorsLight.yellow,
  appBarTheme: AppBarTheme(
    backgroundColor: AppColorsLight.white,
    centerTitle: true,
    titleTextStyle: TextStyle(
      color: AppColorsLight.blue,
      
      fontSize: 20,
      fontWeight: FontWeight.bold
    )
    
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      
      textStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
  )



);
  