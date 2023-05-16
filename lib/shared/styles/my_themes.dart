import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color lightColor = Color(0xff5D9CEC);
  static const Color darkColor = Color(0xFF141A2E);
  static const Color greenColor = Color(0xff61E757);
  static const Color redColor = Color(0xffEC4B4B);
  static const Color lightGreenColor = Color(0xffDFECDB);

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    primaryColor: lightColor,

    brightness: Brightness.light,
    scaffoldBackgroundColor: lightGreenColor,

    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
      color: lightColor,

      iconTheme: IconThemeData(color: Colors.white),
    ),

    textTheme: TextTheme(
        bodyLarge: GoogleFonts.poppins(
            fontSize: 22, fontWeight: FontWeight.bold, color: lightColor),
      bodyMedium: GoogleFonts.poppins(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        bodySmall: GoogleFonts.roboto(
            fontSize: 12, color: Colors.black),),


    bottomNavigationBarTheme:  BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: lightColor,
        selectedLabelStyle: const TextStyle(color: Colors.black),
        unselectedItemColor: Colors.grey.shade400,
        unselectedLabelStyle: const TextStyle(color: Colors.white)),


    buttonTheme:
        const ButtonThemeData(buttonColor: lightColor, highlightColor: lightColor),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(lightColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          fixedSize: const MaterialStatePropertyAll(Size(10, 20)),
          padding: MaterialStateProperty.all(EdgeInsets.zero)),
    ),

  );

  // static ThemeData darkTheme = ThemeData(
  // useMaterial3: true,
  //   // colorScheme: ColorScheme(brightness: Brightness.dark, primary: darkColor, onPrimary: onPrimary, secondary: secondary, onSecondary: onSecondary, error: error, onError: onError, background: background, onBackground: onBackground, surface: surface, onSurface: onSurface),
  //
  //   brightness: Brightness.dark,
  //   scaffoldBackgroundColor: Colors.transparent,
  //   primaryColor: darkColor,
  //   appBarTheme: const AppBarTheme(
  //     titleTextStyle: TextStyle(
  //         fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
  //     color: Colors.transparent,
  //     elevation: 0,
  //     centerTitle: true,
  //     iconTheme: IconThemeData(color: darkColor),
  //   ),
  //   textTheme: TextTheme(
  //       bodyMedium: GoogleFonts.amiri(
  //           fontSize: 25, fontWeight: FontWeight.bold, color: yellowColor),
  //       bodySmall: GoogleFonts.amiri(
  //           fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
  //       titleMedium: GoogleFonts.amiri(
  //           fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white)),
  //   bottomNavigationBarTheme: const BottomNavigationBarThemeData(
  //       backgroundColor: darkColor,
  //       type: BottomNavigationBarType.fixed,
  //       selectedItemColor: yellowColor,
  //       selectedLabelStyle: TextStyle(color: yellowColor),
  //       unselectedItemColor: Colors.white,
  //       unselectedLabelStyle: TextStyle(color: Colors.white)),
  //   buttonTheme:
  //       const ButtonThemeData(buttonColor: darkColor, highlightColor: darkColor),
  //   elevatedButtonTheme: ElevatedButtonThemeData(
  //     style: ButtonStyle(
  //         backgroundColor: MaterialStateProperty.all(darkColor),
  //         shape: MaterialStateProperty.all(
  //           RoundedRectangleBorder(
  //             borderRadius: BorderRadius.circular(10),
  //           ),
  //         ),
  //         fixedSize: const MaterialStatePropertyAll(Size(10, 20)),
  //         padding: MaterialStateProperty.all(EdgeInsets.zero)),
  //   ),
  // );
}
