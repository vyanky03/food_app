import 'package:flutter/material.dart';
import 'package:food_app/contants.dart';
import 'package:food_app/screens/home/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: kprimaryColor,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: ksecondaryColor),
          bodySmall: TextStyle(color: ksecondaryColor),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
