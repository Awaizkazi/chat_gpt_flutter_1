import 'package:chat_gpt_flutter_1/constants/constants.dart';
import 'package:flutter/material.dart';

import 'screens/chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChatGPT Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: scaffoldBackgroundColor,
        appBarTheme: AppBarTheme(color: cardColor),
        primarySwatch: Colors.blue,
      ),
      home: ChatScreen(),
    );
  }
}

//TODO https://www.youtube.com/watch?v=BB59SwaQjrQ
//  35:37 se dekna baki hai