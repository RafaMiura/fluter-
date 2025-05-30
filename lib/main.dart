import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:pizza_menu/pizza_data.dart';
import 'package:pizza_menu/pizza_menu.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true,
      ),
      home: const PizzaMenu(),
    );
  }

  
}
