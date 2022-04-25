import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';

import 'pages/home_page.dart';
import 'pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.red),
      darkTheme:
          ThemeData(brightness: Brightness.dark, primarySwatch: Colors.indigo),
      initialRoute: "/home",
      routes: {
        "/": ((context) => LoginPage()),
        "/home": (context) => HomePage(),
        "/login": ((context) => LoginPage())
      },
    );
  }
}
