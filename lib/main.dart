import 'package:flutter/material.dart';
import 'package:practicaappmovilesu2/config/theme/app_theme.dart';
import 'package:practicaappmovilesu2/presentation/providers/chat_provider.dart';
import 'package:practicaappmovilesu2/presentation/screens/chat_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ChatProvider())],
      child: MaterialApp(
          title: 'YeS NO APP ALEJANDRA ',
          debugShowCheckedModeBanner: false,
          theme: Apptheme(selectColor: 1).theme(),
          home: const Chat()),
    );
  }
}
