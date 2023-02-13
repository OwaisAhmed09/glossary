import 'package:flutter/material.dart';
import 'package:glosrapp/screens/home.dart';
import 'package:glosrapp/screens/start-app/second_screen.dart';
import 'package:glosrapp/screens/start-app/splash.dart';
import 'package:glosrapp/screens/start-app/third_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const home(),
    );
  }
}
