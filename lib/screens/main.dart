import 'package:flutter/material.dart';
import 'package:todo/home_layout/home_layout.dart';
import 'package:todo/shared/styles/my_themes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: MyThemeData.lightTheme,
      themeMode: ThemeMode.light,

      initialRoute: HomeLayout.routeName,
      routes: {
        HomeLayout.routeName:(c)=>HomeLayout(),
      },
    );
  }
}

