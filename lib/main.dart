import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:listing_app/pages/homepage.dart';
import 'package:listing_app/pages/loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        appBarTheme: AppBarTheme(
          elevation: 0.0,
          color: Colors.orange,
          iconTheme: IconThemeData(color: Colors.black),
          toolbarTextStyle: Theme.of(context).textTheme.bodyMedium,
          titleTextStyle: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.amber,
      ),
      initialRoute: "/loginpage", // Changed to LoginPage
      routes: {
        "/homepage": (context) => HomePage(),
        "/loginpage": (context) => LoginPage(),
      },
    );
  }
}
