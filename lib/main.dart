import 'package:flutter/material.dart';
import 'package:stylish_app/constants/constants.dart';
import 'package:stylish_app/screens/intro/intro_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Gordita",
        scaffoldBackgroundColor: bgColor,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.black54),
        ),
        useMaterial3: true,
      ),
      home: const IntroPage(),
    );
  }
}
