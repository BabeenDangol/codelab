import 'package:flutter/material.dart';

import 'home.dart';

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
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          color: Color.fromARGB(255, 140, 130, 130),
          elevation: 19,
          foregroundColor: Colors.white,
        ),
      ),
      home: Home(),
    );
  }
}
