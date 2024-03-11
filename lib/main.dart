import 'package:exerciseui/pages/navigation_page.dart';
import 'package:flutter/material.dart';
import 'package:exerciseui/pages/home_page.dart';
import 'package:exerciseui/pages/category_page.dart';
import 'package:exerciseui/pages/message_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Exercise",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true),
      initialRoute: '/',
      routes: {
        '/': (context) => const NavigationPage(),
        '/home': (context) => const HomePage(),
        '/category': (context) => const CategoryPage(),
        '/message': (context) => const MessagePage(),
      },
    );
  }
}
