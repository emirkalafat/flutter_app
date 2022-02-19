import 'package:blog_site/route_generator.dart';
import 'package:color/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Blog Site',
        initialRoute: '/',
        onGenerateRoute: RouteGenerator.generateRoute,
        theme: buildThemeData());
  }

  ThemeData buildThemeData() {
    return ThemeData(
      brightness: Brightness.light,
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.blue,
      ).copyWith(
        secondary: Colors.green,
      ),
      textTheme: buildTextTheme(),
    );
  }

  TextTheme buildTextTheme() {
    return TextTheme(
      headline1: GoogleFonts.rubik(
          fontSize: 83, fontWeight: FontWeight.w300, letterSpacing: -1.5),
      headline2: GoogleFonts.rubik(
          fontSize: 52, fontWeight: FontWeight.w300, letterSpacing: -0.5),
      headline3: GoogleFonts.rubik(fontSize: 42, fontWeight: FontWeight.w400),
      headline4: GoogleFonts.rubik(
          fontSize: 29, fontWeight: FontWeight.w400, letterSpacing: 0.25),
      headline5: GoogleFonts.rubik(fontSize: 21, fontWeight: FontWeight.w400),
      headline6: GoogleFonts.rubik(
          fontSize: 17, fontWeight: FontWeight.w500, letterSpacing: 0.15),
      subtitle1: GoogleFonts.rubik(
          fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.15),
      subtitle2: GoogleFonts.rubik(
          fontSize: 12, fontWeight: FontWeight.w500, letterSpacing: 0.1),
      bodyText1: GoogleFonts.inter(
          fontSize: 13, fontWeight: FontWeight.w400, letterSpacing: 0.5),
      bodyText2: GoogleFonts.inter(
          fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.25),
      button: GoogleFonts.inter(
          fontSize: 12, fontWeight: FontWeight.w500, letterSpacing: 1.25),
      caption: GoogleFonts.inter(
          fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 0.4),
      overline: GoogleFonts.inter(
          fontSize: 8, fontWeight: FontWeight.w400, letterSpacing: 1.5),
    );
  }
}
