import 'package:flutter/material.dart';

import 'calculatoe_screen.dart';
import 'converter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => const CalculatorScreen(),
        '/converter': (context) => const ConverterScreen(),
      },
    );
  }
}

