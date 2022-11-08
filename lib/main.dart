import 'package:flutter/material.dart';
import 'package:zataca_challenge/views/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Prueba nivel flutter Zataca",
      debugShowCheckedModeBanner:  false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            color: Colors.teal,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
      home: const HomeScreen()
    );
  }
}

