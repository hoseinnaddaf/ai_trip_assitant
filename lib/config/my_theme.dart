
import 'package:flutter/material.dart';

class MyThemes {
  static final darkTheme = ThemeData(
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontFamily: "IRANYekan",fontSize: 32,fontWeight: FontWeight.w700),
      titleLarge: TextStyle(fontFamily: "IRANYekan",fontSize: 16,fontWeight: FontWeight.normal),
      titleMedium: TextStyle(fontFamily: "IRANYekan",fontSize: 14,fontWeight: FontWeight.w500),
      titleSmall: TextStyle(fontFamily: "IRANYekan",fontSize: 12,fontWeight: FontWeight.normal),
      labelLarge: TextStyle(fontFamily: "IRANYekan",fontSize: 16,fontWeight: FontWeight.w700),
      labelMedium: TextStyle(fontFamily: "IRANYekan",fontSize: 14,fontWeight: FontWeight.w700),
      labelSmall: TextStyle(fontFamily: "IRANYekan",fontSize: 12,fontWeight: FontWeight.bold),

      bodyLarge: TextStyle(fontFamily: "IRANYekan",fontSize: 16,fontWeight: FontWeight.w400 ,color: Colors.black),
      bodyMedium: TextStyle(fontFamily: "IRANYekan",fontSize: 14,fontWeight: FontWeight.w400 ,color: Colors.black),
      bodySmall: TextStyle(fontFamily: "IRANYekan",fontSize: 12,fontWeight: FontWeight.w400 ,color: Colors.black ),
    ),
    // highlightColor: Colors.indigo,
    // backgroundColor: Colors.black,
    // canvasColor: Colors.grey,
    // unselectedWidgetColor: Colors.white70,
    // primaryColorLight: Color.fromRGBO(252, 178, 98, 1),
    // scaffoldBackgroundColor: Colors.grey.shade900,
    // primaryColor: Colors.amber.shade800,
    // indicatorColor: Colors.amber,
    // secondaryHeaderColor: Color.fromRGBO(176, 106, 2, 1),
    // iconTheme: IconThemeData(color: Colors.amber.shade800),
    // textSelectionTheme: const TextSelectionThemeData(
    //   cursorColor: Colors.red,
    //   selectionColor: Colors.green,
    //   selectionHandleColor: Colors.blue,
    // )
    // colorScheme: const ColorScheme.dark()
  );

  static final lightTheme = ThemeData(
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontFamily: "IRANYekan",fontSize: 32,fontWeight: FontWeight.w700),

      titleLarge: TextStyle(fontFamily: "IRANYekan",fontSize: 16,fontWeight: FontWeight.normal),
      titleMedium: TextStyle(fontFamily: "IRANYekan",fontSize: 14,fontWeight: FontWeight.w500),
      titleSmall: TextStyle(fontFamily: "IRANYekan",fontSize: 12,fontWeight: FontWeight.normal),

      labelLarge: TextStyle(fontFamily: "IRANYekan",fontSize: 16,fontWeight: FontWeight.w700),
      labelMedium: TextStyle(fontFamily: "IRANYekan",fontSize: 14,fontWeight: FontWeight.w700),
      labelSmall: TextStyle(fontFamily: "IRANYekan",fontSize: 12,fontWeight: FontWeight.bold),

      bodyLarge: TextStyle(fontFamily: "IRANYekan",fontSize: 16,fontWeight: FontWeight.w400 ,color: Colors.black),
      bodyMedium: TextStyle(fontFamily: "IRANYekan",fontSize: 14,fontWeight: FontWeight.w400 ,color: Colors.black),
      bodySmall: TextStyle(fontFamily: "IRANYekan",fontSize: 12,fontWeight: FontWeight.w400 ,color: Colors.black ),
    ),
    // highlightColor: Colors.indigo,
    // backgroundColor: Colors.black,
    // unselectedWidgetColor: Colors.black,
    // primaryColorLight: Color.fromRGBO(252, 178, 98, 1),
    // scaffoldBackgroundColor: Colors.white,
    // primaryColor: Colors.amber.shade800,
    // indicatorColor: Colors.amber,
    // secondaryHeaderColor: Color.fromRGBO(176, 106, 2, 1),
    // iconTheme: IconThemeData(color: Colors.amber.shade800),
    //
    // // colorScheme: const ColorScheme.light()
  );
}