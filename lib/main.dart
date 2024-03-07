import 'package:flutter/material.dart';
import 'package:practicaappmovilesu2/config/theme/app_theme.dart';
import 'package:practicaappmovilesu2/presentation/screens/chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'YAS NO APP ALEJANDRA ',
        debugShowCheckedModeBanner: false,
        theme: Apptheme(selectColor: 2).theme(),
        home: const chat());
  }
}
